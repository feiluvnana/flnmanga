import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:mangadexapi/mangadexapi.dart';

class MangaCard extends StatelessWidget {
  final Manga manga;
  final VoidCallback? onTap;

  const MangaCard({super.key, required this.manga, this.onTap});

  @override
  Widget build(BuildContext context) {
    final coverArtAttributes = manga.relationships.whereType<CoverArtRelationship>().firstOrNull?.attributes;

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
                        "https://uploads.mangadex.org/covers/${manga.id}/${coverArtAttributes.fileName}.256.jpg",
                        fit: BoxFit.cover,
                        cache: true,
                        cacheWidth: 256,
                        loadStateChanged:
                            (state) =>
                                state.extendedImageLoadState == LoadState.loading
                                    ? const Center(child: CircularProgressIndicator(year2023: false))
                                    : state.completedWidget,
                      )
                      : const Center(child: Icon(Icons.image_not_supported)),
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
                    manga.attributes.title["en"] ?? "No title",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(manga.attributes.status.name, style: Theme.of(context).textTheme.bodySmall),
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
