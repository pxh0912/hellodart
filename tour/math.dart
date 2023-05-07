///https://dart.cn/guides/libraries/library-tour#dartmath---math-and-random
//数学和随机数
import 'dart:math';
void main() {
  trigonometry();
  maxmin();

  //常数
  print(e); // 2.718281828459045
  print(pi); // 3.141592653589793
  print(sqrt2); // 1.4142135623730951

  //生成随机数
  final random = Random();
  final randomNumber = random.nextInt(100);
  print('random number: $randomNumber');}

void trigonometry() {
  //三角函数
  assert(cos(pi) == -1.0);

  var degrees = 30;
  var radians = degrees * (pi / 180);
  var sinOf30degrees = sin(radians);
  assert((sinOf30degrees - 0.5).abs() < 0.01);
  print(radians);
  print(sinOf30degrees);
}

void maxmin() {
  //最大值和最小值
  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);
  print(max(1, 1000));
}


