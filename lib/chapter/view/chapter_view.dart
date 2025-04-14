import 'package:extended_image/extended_image.dart';
import 'package:flnmanga/chapter/bloc/chapter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;

class ChapterView extends StatelessWidget {
  final mgd.Uuid chapterId;

  const ChapterView({super.key, required this.chapterId});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        context.go("/browse");
      },
      child: BlocProvider(
        create:
            (context) =>
                ChapterBloc(api: context.read<mgd.MangadexApi>())..add(ChapterChapterFetched(chapterId: chapterId)),
        child: const _ChapterView(),
      ),
    );
  }
}

class _ChapterView extends StatelessWidget {
  const _ChapterView();

  @override
  Widget build(BuildContext context) {
    final isChapterFetched = context.select<ChapterBloc, bool>((bloc) => bloc.state is ChapterChapterFetchedState);
    final isImagesFetched = context.select<ChapterBloc, bool>(
      (bloc) =>
          bloc.state is ChapterChapterFetchedState ? (bloc.state as ChapterChapterFetchedState).urls.isNotEmpty : false,
    );
    if (!isChapterFetched) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(year2023: false)));
    } else if (!isImagesFetched) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(year2023: false)));
    } else {
      return Scaffold(
        body: Builder(
          builder: (context) {
            final urls = context.select<ChapterBloc, List<String>>(
              (bloc) => (bloc.state as ChapterChapterFetchedState).urls,
            );
            return _buildLTRReader(urls);
          },
        ),
      );
    }
  }

  Widget _buildLTRReader(List<String> urls) {
    return PageView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        final url = urls[index];
        return ExtendedImage.network(
          url,
          cache: true,
          mode: ExtendedImageMode.gesture,
          initGestureConfigHandler: (state) {
            if (state.extendedImageInfo == null) return GestureConfig(initialScale: 1);
            final widthRatio = MediaQuery.of(context).size.width / state.extendedImageInfo!.image.width;
            final heightRatio = MediaQuery.of(context).size.height / state.extendedImageInfo!.image.height;
            return GestureConfig(
              initialScale: 1,
              minScale: 1,
              animationMinScale: 1,
              maxScale: (heightRatio / widthRatio).clamp(1, double.infinity),
              animationMaxScale: (heightRatio / widthRatio).clamp(1, double.infinity),
            );
          },
        );
      },
    );
  }

  // Widget _buildWebtoonReader(List<String> urls) {
  //   return ListView.builder(
  //     itemCount: urls.length,
  //     itemBuilder: (context, index) {
  //       final url = urls[index];
  //       return ConstrainedBox(
  //         constraints: BoxConstraints(
  //           minHeight: MediaQuery.of(context).size.height,
  //           minWidth: MediaQuery.of(context).size.width,
  //         ),
  //         child: ExtendedImage.network(url, cache: true),
  //       );
  //     },
  //   );
  // }
}
