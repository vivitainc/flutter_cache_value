import 'package:cache_value/cache_value.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get', () {
    var tmp = 1;
    final cache = Cache<int>();
    final value = cache.get(() => ++tmp);
    expect(value, 2);
    expect(tmp, 2);
    expect(cache.get(() => throw Exception('Invalid call')), 2);
  });

  test('getAsync', () async {
    var tmp = 1;
    final cache = Cache<int>();
    final value = await cache.getAsync(() => Future.value(++tmp));

    expect(value, 2);
    expect(tmp, 2);
    expect(await cache.getAsync(() => throw Exception('Invalid call')), 2);
  });
}
