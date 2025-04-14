import 'package:extended_image/extended_image.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flnmanga/core/extension.dart';
import 'package:flnmanga/manga/bloc/manga_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;
import 'package:material_symbols_icons/symbols.dart';

class MangaView extends StatelessWidget {
  final mgd.Uuid mangaId;

  const MangaView({super.key, required this.mangaId});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        context.go("/browse");
      },
      child: BlocProvider(
        lazy: false,
        create: (context) => MangaBloc(api: context.read<mgd.MangadexApi>())..add(MangaFetched(mangaId: mangaId)),
        child: const _MangaView(),
      ),
    );
  }
}

class _MangaView extends StatelessWidget {
  const _MangaView();

  @override
  Widget build(BuildContext context) {
    final isMangaFetched = context.select<MangaBloc, bool>((bloc) => bloc.state is MangaFetchedState);
    if (!isMangaFetched) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => context.go("/browse"), icon: const Icon(Symbols.arrow_back_rounded)),
        ),
        body: const Center(child: CircularProgressIndicator(year2023: false)),
      );
    }
    return Scaffold(body: CustomScrollView(slivers: [_buildMangaAppBar(), _buildChapterList()]));
  }

  Widget _buildChapterList() {
    return Builder(
      builder: (context) {
        final pages = context.select<MangaBloc, List<List<mgd.Chapter>>?>((bloc) {
          final chapters = (bloc.state as MangaFetchedState).chapters;
          return chapters.isEmpty ? null : chapters;
        });
        final keys = context.select<MangaBloc, List<int>?>((bloc) {
          final offsets = (bloc.state as MangaFetchedState).offsets;
          return offsets.isEmpty ? null : offsets;
        });
        final hasNextPage = context.select<MangaBloc, bool>((bloc) => (bloc.state as MangaFetchedState).hasNextPage);
        final isLoading = context.select<MangaBloc, bool>(
          (bloc) => (bloc.state as MangaFetchedState).status == ChapterStatus.loading,
        );

        return PagedSliverList(
          state: PagingState(pages: pages, keys: keys, hasNextPage: hasNextPage, isLoading: isLoading),
          fetchNextPage: () {
            context.read<MangaBloc>().add(const MangaChaptersFetched());
          },
          builderDelegate: PagedChildBuilderDelegate<mgd.Chapter>(
            itemBuilder: (context, chapter, index) => _buildChapterTile(chapter),
          ),
        );
      },
    );
  }

  Widget _buildChapterTile(mgd.Chapter chapter) {
    final scanlationGroupAttributes =
        chapter.relationships.whereType<mgd.ScanlationGroupRelationship>().firstOrNull?.attributes;
    final title = StringBuffer();
    if (chapter.attributes.volume != null) {
      title.write("Vol. ${chapter.attributes.volume} ");
    }
    if (chapter.attributes.chapter != null) {
      title.write("Ch. ${chapter.attributes.chapter}: ");
    }
    if (chapter.attributes.title != null) {
      title.write("${chapter.attributes.title}");
    }

    return Builder(
      builder: (context) {
        return ListTile(
          onTap: () => context.go("/chapter/${chapter.id}"),
          title: Text(
            title.toString(),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "${scanlationGroupAttributes?.name ?? "Unknown scanlation group"} - ${chapter.attributes.publishAt.readable}",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
      },
    );
  }

  Widget _buildMangaAppBar() {
    return Builder(
      builder: (context) {
        final manga = context.select<MangaBloc, mgd.Manga>((bloc) => (bloc.state as MangaFetchedState).manga);

        final minHeight = kToolbarHeight + MediaQuery.of(context).viewPadding.top;
        final maxHeight = MediaQuery.of(context).size.height * 0.4;

        return SliverAppBar.large(
          expandedHeight: maxHeight,
          collapsedHeight: minHeight,
          toolbarHeight: minHeight,
          leading: IconButton(onPressed: () => context.go("/browse"), icon: const Icon(Symbols.arrow_back_rounded)),
          title: Text(
            manga.attributes.title["en"] ?? manga.attributes.title["ja-ro"] ?? "No title",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Positioned.fill(child: _buildMangaAppBarCover(manga)),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  height: maxHeight * 0.7,
                  child: _buildMangaAppBarInfo(manga),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMangaAppBarCover(mgd.Manga manga) {
    final coverArtAttributes = manga.relationships.whereType<mgd.CoverArtRelationship>().firstOrNull?.attributes;
    return coverArtAttributes != null
        ? ExtendedImage.network(
          coverArtAttributes.url(manga.id),
          fit: BoxFit.cover,
          opacity: const AlwaysStoppedAnimation(0.3),
          cache: true,
        )
        : const SizedBox.shrink();
  }

  Widget _buildMangaAppBarInfo(mgd.Manga manga) {
    return Builder(
      builder: (context) {
        final authorAttributes = manga.relationships.whereType<mgd.AuthorRelationship>().firstOrNull?.attributes;
        final tags = manga.attributes.tags.where((tag) => tag.attributes.name["en"] != null).toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                manga.attributes.title["en"] ?? manga.attributes.title["ja-ro"] ?? "No title",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                authorAttributes?.name ?? "Unknown author",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    child: Text(
                      manga.attributes.description["en"] ?? "No description",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  if (manga.attributes.publicationDemographic != null)
                    _buildMangaAppBarChip("Demographic: ${manga.attributes.publicationDemographic?.name.capitalize}"),
                  _buildMangaAppBarChip("Content rating: ${manga.attributes.contentRating.name.capitalize}"),
                  ...tags.map((tag) => _buildMangaAppBarChip(tag.attributes.name["en"]!)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMangaAppBarChip(String text) {
    return Builder(
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(text, style: Theme.of(context).textTheme.labelSmall),
        );
      },
    );
  }
}
