import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flnmanga/home/browse/bloc/browse_bloc.dart';
import 'package:flnmanga/home/browse/widget/manga_card.dart';
import 'package:flnmanga/shared/bloc/tag_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;
import 'package:material_symbols_icons/symbols.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => BrowseBloc(api: context.read<mgd.MangadexApi>()),
      child: const _BrowseView(),
    );
  }
}

class _BrowseView extends StatelessWidget {
  const _BrowseView();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<BrowseBloc>().add(const BrowserMangasRefreshed());
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Browse"), actions: [_buildFilterButton()]),
        body: Padding(padding: const EdgeInsets.all(8.0), child: _buildMangaGrid()),
      ),
    );
  }

  Widget _buildMangaGrid() {
    return Builder(
      builder: (context) {
        final pages = context.select<BrowseBloc, List<List<mgd.Manga>>?>(
          (bloc) => bloc.state.mangas.isEmpty ? null : bloc.state.mangas,
        );
        final keys = context.select<BrowseBloc, List<int>?>(
          (bloc) => bloc.state.offsets.isEmpty ? null : bloc.state.offsets,
        );
        final hasNextPage = context.select<BrowseBloc, bool>((bloc) => bloc.state.hasNextPage);
        final isLoading = context.select<BrowseBloc, bool>((bloc) => bloc.state.status == BrowseStatus.loading);

        return PagedGridView<int, mgd.Manga>(
          showNewPageErrorIndicatorAsGridChild: false,
          showNewPageProgressIndicatorAsGridChild: false,
          showNoMoreItemsIndicatorAsGridChild: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.618),
          state: PagingState(pages: pages, keys: keys, hasNextPage: hasNextPage, isLoading: isLoading),
          fetchNextPage: () {
            context.read<BrowseBloc>().add(const BrowseMangasFetched());
          },
          builderDelegate: PagedChildBuilderDelegate<mgd.Manga>(
            itemBuilder:
                (context, manga, index) => MangaCard(manga: manga, onTap: () => context.go("/manga/${manga.id}")),
          ),
        );
      },
    );
  }

  Widget _buildFilterButton() {
    return Builder(
      builder: (context) {
        void handleFilter() {
          final bloc = context.read<BrowseBloc>();
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            useRootNavigator: true,
            builder: (context) => BlocProvider.value(value: bloc, child: const _BrowseFilterModalBottomSheet()),
          );
        }

        final isSearching = context.select<BrowseBloc, bool>((bloc) => bloc.state.filter.isSearching);
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child:
              !isSearching
                  ? OutlinedButton(
                    onPressed: handleFilter,
                    child: const Row(children: [Icon(Symbols.filter_list_rounded), SizedBox(width: 4), Text("Filter")]),
                  )
                  : FilledButton(
                    onPressed: handleFilter,
                    child: const Row(
                      children: [Icon(Symbols.filter_list_rounded), SizedBox(width: 4), Text("Filtering")],
                    ),
                  ),
        );
      },
    );
  }
}

class _BrowseFilterModalBottomSheet extends StatefulWidget {
  const _BrowseFilterModalBottomSheet();

  @override
  State<_BrowseFilterModalBottomSheet> createState() => _BrowseFilterModalBottomSheetState();
}

class _BrowseFilterModalBottomSheetState extends State<_BrowseFilterModalBottomSheet> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Map<mgd.TagGroup, List<mgd.Tag>> tagsByGroup = context.select<TagBloc, Map<mgd.TagGroup, List<mgd.Tag>>>((
      bloc,
    ) {
      final tags = bloc.state.tags;
      final tagsByGroup = <mgd.TagGroup, List<mgd.Tag>>{};
      for (final tag in tags) {
        final group = tag.attributes.group;
        tagsByGroup[group] ??= [];
        tagsByGroup[group]!.add(tag);
      }
      return tagsByGroup;
    });

    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.8),
        child: ListView(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          shrinkWrap: true,
          children: [
            _buildHeaderTile(),
            const Divider(),
            _buildTitleTile(),
            ...tagsByGroup.entries.map((group) => _buildTagGroupTile(group.key, group.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderTile() {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(right: 24),
      leading: TextButton(
        onPressed: () {
          _titleController.clear();
          context.read<BrowseBloc>().add(BrowseSearchParamsChanged(fn: (params) => const BrowseFilter()));
        },
        child: const Text("Reset"),
      ),
      trailing: FilledButton(
        onPressed: () {
          context.read<BrowseBloc>().add(const BrowserMangasRefreshed());
          context.pop();
        },
        child: const Text("Apply"),
      ),
    );
  }

  Widget _buildTitleTile() {
    return ListTile(
      title: TextField(
        controller: _titleController,
        onChanged: (value) {
          context.read<BrowseBloc>().add(BrowseSearchParamsChanged(fn: (params) => params.copyWith(title: value)));
        },
        decoration: const InputDecoration(labelText: "Title", border: OutlineInputBorder()),
      ),
    );
  }

  Widget _buildTagGroupTile(mgd.TagGroup group, List<mgd.Tag> tags) {
    return ExpansionTile(
      title: Text(group.name.capitalize, style: Theme.of(context).textTheme.titleMedium),
      children: tags.map(_buildTagTile).toList(),
    );
  }

  Widget _buildTagTile(mgd.Tag tag) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.only(left: 16, right: 12),
      dense: true,
      title: Text(tag.attributes.name["en"]!, style: Theme.of(context).textTheme.bodySmall),
      trailing: Builder(
        builder: (context) {
          final isSelected = context.select<BrowseBloc, bool?>((bloc) {
            final isIncluded = bloc.state.filter.includedTags?.contains(tag.id);
            final isExcluded = bloc.state.filter.excludedTags?.contains(tag.id);
            return isExcluded == true ? null : (isIncluded ?? false);
          });
          return Checkbox(
            value: isSelected,
            tristate: true,
            onChanged: (value) {
              BrowseSearchParamsChanged event;
              if (value == true) {
                event = BrowseSearchParamsChanged(
                  fn:
                      (params) => params.copyWith(
                        includedTags: [...?params.includedTags, tag.id],
                        excludedTags: params.excludedTags?.where((id) => id != tag.id).toList(),
                      ),
                );
              } else if (value == null) {
                event = BrowseSearchParamsChanged(
                  fn:
                      (params) => params.copyWith(
                        excludedTags: [...?params.excludedTags, tag.id],
                        includedTags: params.includedTags?.where((id) => id != tag.id).toList(),
                      ),
                );
              } else {
                event = BrowseSearchParamsChanged(
                  fn:
                      (params) => params.copyWith(
                        includedTags: params.includedTags?.where((id) => id != tag.id).toList(),
                        excludedTags: params.excludedTags?.where((id) => id != tag.id).toList(),
                      ),
                );
              }
              context.read<BrowseBloc>().add(event);
            },
          );
        },
      ),
    );
  }
}
