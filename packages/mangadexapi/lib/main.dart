import 'dart:convert';

import 'package:mangadexapi/mangadexapi.dart';

void main() async {
  final manga = await MangadexApi.getRandomManga();
  print(const JsonEncoder.withIndent("  ").convert(manga.toMap()));
}
