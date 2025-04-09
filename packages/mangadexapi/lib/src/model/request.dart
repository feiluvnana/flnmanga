import 'package:mangadexapi/src/model/enum.dart';

sealed class OrderOptions {
  final Map<String, Order> _order;

  OrderOptions({required Map<String, Order> order}) : _order = order;

  Map<String, String> toQueries() =>
      Map.fromEntries(_order.entries.map((e) => MapEntry("order[${e.key}]", e.value.name)));
}

class AuthorOrderOptions extends OrderOptions {
  AuthorOrderOptions() : super(order: {});

  AuthorOrderOptions name(Order? order) {
    if (order != null) {
      _order["name"] = order;
    } else {
      _order.remove("name");
    }
    return this;
  }
}

class ChapterOrderOptions extends OrderOptions {
  ChapterOrderOptions() : super(order: {});

  ChapterOrderOptions createdAt(Order? order) {
    if (order != null) {
      _order["createdAt"] = order;
    } else {
      _order.remove("createdAt");
    }
    return this;
  }

  ChapterOrderOptions updatedAt(Order? order) {
    if (order != null) {
      _order["updatedAt"] = order;
    } else {
      _order.remove("updatedAt");
    }
    return this;
  }

  ChapterOrderOptions publishAt(Order? order) {
    if (order != null) {
      _order["publishAt"] = order;
    } else {
      _order.remove("publishAt");
    }
    return this;
  }

  ChapterOrderOptions readableAt(Order? order) {
    if (order != null) {
      _order["readableAt"] = order;
    } else {
      _order.remove("readableAt");
    }
    return this;
  }

  ChapterOrderOptions volume(Order? order) {
    if (order != null) {
      _order["volume"] = order;
    } else {
      _order.remove("volume");
    }
    return this;
  }

  ChapterOrderOptions chapter(Order? order) {
    if (order != null) {
      _order["chapter"] = order;
    } else {
      _order.remove("chapter");
    }
    return this;
  }
}

class MangaOrderOptions extends OrderOptions {
  MangaOrderOptions() : super(order: {"latestUploadedChapter": Order.desc});

  MangaOrderOptions title(Order? order) {
    if (order != null) {
      _order["title"] = order;
    } else {
      _order.remove("title");
    }
    return this;
  }

  MangaOrderOptions year(Order? order) {
    if (order != null) {
      _order["year"] = order;
    } else {
      _order.remove("year");
    }
    return this;
  }

  MangaOrderOptions createdAt(Order? order) {
    if (order != null) {
      _order["createdAt"] = order;
    } else {
      _order.remove("createdAt");
    }
    return this;
  }

  MangaOrderOptions updatedAt(Order? order) {
    if (order != null) {
      _order["updatedAt"] = order;
    } else {
      _order.remove("updatedAt");
    }
    return this;
  }

  MangaOrderOptions latestUploadedChapter(Order? order) {
    if (order != null) {
      _order["latestUploadedChapter"] = order;
    } else {
      _order.remove("latestUploadedChapter");
    }
    return this;
  }

  MangaOrderOptions followedCount(Order? order) {
    if (order != null) {
      _order["followedCount"] = order;
    } else {
      _order.remove("followedCount");
    }
    return this;
  }

  MangaOrderOptions relevance(Order? order) {
    if (order != null) {
      _order["relevance"] = order;
    } else {
      _order.remove("relevance");
    }
    return this;
  }
}
