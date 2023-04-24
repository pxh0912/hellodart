import 'dart:async';

class MyAsyncClass {
  Future<int> asyncMethod() async {
    // 假设这是一个长时间运行的方法
    await Future.delayed(Duration(seconds: 5));
    return 42;
  }
}
void main() async {
  var myAsyncClass = MyAsyncClass();
  var result = await myAsyncClass.asyncMethod();
  print('异步方法返回的结果为：$result');
}
