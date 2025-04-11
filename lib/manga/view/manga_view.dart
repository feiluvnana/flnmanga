import 'package:flnmanga/manga/bloc/manga_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mangadexapi/mangadexapi.dart';

class MangaView extends StatelessWidget {
  final Uuid mangaId;

  const MangaView({super.key, required this.mangaId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MangaBloc(api: context.read<MangadexApi>())..add(MangaLoaded(mangaId: mangaId)),
      child: const _MangaView(),
    );
  }
}

class _MangaView extends StatelessWidget {
  const _MangaView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manga"),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => context.pop()),
      ),
      body: BlocBuilder<MangaBloc, MangaState>(
        builder: (context, state) {
          if (state case MangaInitialState _) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state case MangaLoadedState s) {
            final title = s.manga.attributes.title["en"] ?? "No title";

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: Theme.of(context).textTheme.titleLarge),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children:
                                s.manga.relationships
                                    .whereType<TagRelationship>()
                                    .where((tag) => tag.attributes != null)
                                    .map((tag) {
                                      return Chip(label: Text(tag.attributes!.name["en"] ?? ""));
                                    })
                                    .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  s.manga.attributes.description["en"] ?? s.manga.attributes.description["ja"] ?? "",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Expanded(
                  child: PagedListView<int, Chapter>(
                    state: PagingState(
                      pages: s.chapters.isEmpty ? null : s.chapters,
                      keys: s.offsets.isEmpty ? null : s.offsets,
                      hasNextPage: s.hasNextPage,
                      isLoading: s.status == ChapterStatus.loading,
                    ),
                    fetchNextPage: () {
                      context.read<MangaBloc>().add(const MangaChaptersFetched());
                    },
                    builderDelegate: PagedChildBuilderDelegate<Chapter>(
                      itemBuilder: (context, chapter, index) => ListTile(title: Text("${chapter.attributes.title}")),
                    ),
                  ),
                ),
              ],
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
