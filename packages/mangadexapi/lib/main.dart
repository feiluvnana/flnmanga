import 'package:mangadexapi/mangadexapi.dart';

void main() async {
  final api = MangadexApi();
  final tags = await api.getTags();
  print(tags);
}
