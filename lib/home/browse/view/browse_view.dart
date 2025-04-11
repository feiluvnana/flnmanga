import 'package:flnmanga/home/browse/bloc/browse_bloc.dart';
import 'package:flnmanga/home/browse/widget/manga_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:material_symbols_icons/symbols.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => BrowseBloc(api: context.read<MangadexApi>()), child: const _BrowseView());
  }
}

class _BrowseView extends StatefulWidget {
  const _BrowseView();

  @override
  State<_BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<_BrowseView> {
  final _focusNode = FocusNode();
  bool _isSearching = false;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<BrowseBloc>().add(const BrowserMangasRefreshed());
      },
      child: Scaffold(
        appBar:
            _isSearching
                ? AppBar(
                  leading: IconButton(
                    onPressed: () {
                      context.read<BrowseBloc>()
                        ..add(const BrowseSearchParamsChanged())
                        ..add(const BrowserMangasRefreshed());
                      setState(() => _isSearching = false);
                    },
                    icon: const Icon(Symbols.arrow_back),
                  ),
                  title: TextField(
                    focusNode: _focusNode,
                    onChanged: (value) => context.read<BrowseBloc>().add(BrowseSearchParamsChanged(title: value)),
                    decoration: const InputDecoration.collapsed(hintText: "Search"),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        context.read<BrowseBloc>().add(const BrowserMangasRefreshed());
                        _focusNode.unfocus();
                      },
                      icon: _isSearching ? const Icon(Symbols.check) : const Icon(Symbols.search),
                    ),
                  ],
                )
                : AppBar(
                  title: const Text("Browse"),
                  actions: [
                    IconButton(
                      onPressed: () => setState(() => _isSearching = !_isSearching),
                      icon: const Icon(Symbols.search),
                    ),
                  ],
                ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<BrowseBloc, BrowseState>(
            buildWhen:
                (previous, current) =>
                    previous.mangas != current.mangas ||
                    previous.offsets != current.offsets ||
                    previous.status != current.status ||
                    previous.hasNextPage != current.hasNextPage,
            builder: (context, state) {
              return PagedGridView<int, Manga>(
                showNewPageErrorIndicatorAsGridChild: false,
                showNewPageProgressIndicatorAsGridChild: false,
                showNoMoreItemsIndicatorAsGridChild: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.618,
                ),
                state: PagingState(
                  pages: state.mangas.isEmpty ? null : state.mangas,
                  keys: state.offsets.isEmpty ? null : state.offsets,
                  hasNextPage: state.hasNextPage,
                  isLoading: state.status == BrowseStatus.loading,
                ),
                fetchNextPage: () {
                  context.read<BrowseBloc>().add(const BrowseMangasFetched());
                },
                builderDelegate: PagedChildBuilderDelegate<Manga>(
                  itemBuilder:
                      (context, manga, index) =>
                          MangaCard(manga: manga, onTap: () => context.push("/manga/${manga.id}")),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
