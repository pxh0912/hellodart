///https://dart.cn/guides/libraries/library-tour#weak-references-and-finalizers
// 定义一个返回Future对象的异步函数
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched successfully';
}

void main() {
  fetchData().then((value) {
    print(value);
  }).catchError((error) {
    print('Error occurred while fetching data: ${error.toString()}');
  });

  print('Fetching data...');
}