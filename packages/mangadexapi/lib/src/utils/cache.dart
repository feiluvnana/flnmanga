abstract class Cache {
  final Duration ttl;

  const Cache({required this.ttl});

  Future<void> set(String key, String value);
  Future<String?> get(String key);
  Future<void> wipe();
}

class NoOpCache extends Cache {
  const NoOpCache({required super.ttl});

  @override
  Future<void> set(String key, String value) async {}
  @override
  Future<String?> get(String key) async => null;
  @override
  Future<void> wipe() async {}
}

class InMemoryCache extends Cache {
  final Map<String, String> _cache = {};

  InMemoryCache({required super.ttl});

  @override
  Future<void> set(String key, String value) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    _cache[key] = value;
    _cache["$key-ttl"] = (now + ttl.inMilliseconds).toString();
  }

  @override
  Future<String?> get(String key) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    final ttl = _cache["$key-ttl"];
    if (ttl == null || int.parse(ttl) < now) {
      _cache.remove(key);
      _cache.remove("$key-ttl");
      return null;
    }
    return _cache[key];
  }

  @override
  Future<void> wipe() async {
    _cache.clear();
  }
}
