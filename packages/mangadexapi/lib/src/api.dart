import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mangadexapi/mangadexapi.dart';

class MangadexApi {
  static const String _baseUrl = "https://api.mangadex.org";
  static final http.Client _client = http.Client();

  static Future<Manga> getRandomManga() async {
    final response = await _client.get(Uri.parse("$_baseUrl/manga/random"));
    if (response.statusCode ~/ 100 == 2) {
      return MangaMapper.fromMap(jsonDecode(response.body)["data"]);
    } else {
      throw Exception("Failed to get manga: ${response.body}");
    }
  }
}
