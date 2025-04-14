import 'package:extended_image/extended_image.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;
import 'package:material_symbols_icons/symbols.dart';

class MangaCard extends StatelessWidget {
  final mgd.Manga manga;
  final VoidCallback? onTap;

  const MangaCard({super.key, required this.manga, this.onTap});

  @override
  Widget build(BuildContext context) {
    final coverArtAttributes = manga.relationships.whereType<mgd.CoverArtRelationship>().firstOrNull?.attributes;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Positioned.fill(
              child:
                  coverArtAttributes != null
                      ? ExtendedImage.network(
                        coverArtAttributes.url256(manga.id),
                        fit: BoxFit.cover,
                        cache: true,
                        cacheWidth: 256,
                        loadStateChanged:
                            (state) =>
                                state.extendedImageLoadState == LoadState.loading
                                    ? const Center(child: CircularProgressIndicator(year2023: false))
                                    : state.completedWidget,
                      )
                      : const Center(child: Icon(Symbols.image_not_supported_rounded)),
            ),
            const _GradientOverlay(),
            Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manga.attributes.title["en"] ?? manga.attributes.title["ja-ro"] ?? "No title",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: switch (manga.attributes.status) {
                              mgd.MangaStatus.ongoing => const Icon(Symbols.play_arrow_rounded, fill: 1, size: 16),
                              mgd.MangaStatus.completed => const Icon(Symbols.done_all_rounded, fill: 1, size: 16),
                              mgd.MangaStatus.hiatus => const Icon(Symbols.pause_rounded, fill: 1, size: 16),
                              mgd.MangaStatus.cancelled => const Icon(Symbols.cancel_rounded, fill: 1, size: 16),
                            },
                          ),
                          alignment: PlaceholderAlignment.middle,
                        ),
                        TextSpan(
                          text: manga.attributes.status.name.capitalize,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GradientOverlay extends StatelessWidget {
  const _GradientOverlay();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          margin: EdgeInsets.only(top: constraints.maxHeight / 2),
          height: constraints.maxHeight / 2,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black87, Colors.transparent],
            ),
          ),
        );
      },
    );
  }
}
