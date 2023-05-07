///https://dart.cn/guides/libraries/library-tour#exceptions
//异常
class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}