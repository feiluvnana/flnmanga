import 'package:mangadexapi/mangadexapi.dart';
import 'package:uuid/uuid.dart';

void main() async {
  final chapters = await MangadexApi.getChapterById(UuidValue.fromString("bbf176a0-ea53-4b8b-8e23-8aa192e838d5"));
  print(chapters);
}
