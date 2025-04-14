import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get readable {
    final now = DateTime.now();
    final diff = now.difference(this);
    if (diff.inDays > 7) {
      return DateFormat("dd/MM/yyyy").format(this);
    } else if (diff.inDays > 1) {
      return "${diff.inDays} days ago";
    } else if (diff.inDays == 1) {
      return "yesterday";
    } else if (diff.inHours > 1) {
      return "${diff.inHours} hours ago";
    } else if (diff.inHours == 1) {
      return "an hour ago";
    } else if (diff.inMinutes > 1) {
      return "${diff.inMinutes} minutes ago";
    } else if (diff.inMinutes == 1) {
      return "a minute ago";
    } else {
      return "just now";
    }
  }
}
