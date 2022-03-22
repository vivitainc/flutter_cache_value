[![Github Actions](https://github.com/vivitainc/flutter_cache_value/actions/workflows/flutter-package-test.yaml/badge.svg)](https://github.com/vivitainc/flutter_cache_value/actions/workflows/flutter-package-test.yaml)

## Features

On-Memory cacheオブジェクトを提供する.

Cacheはあくまで時間のかかる処理の結果を保持する程度の利用を想定されるため、
hashやequalsを実行すると例外を投げる.

## Usage

```dart
final cache = Cache<int>();
final value = await cache.getAsync(() async {
    return heavyFunction();
});
```
