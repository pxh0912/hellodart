///https://dart.cn/guides/libraries/library-tour#numbers
void main() {
  //数字
  assert(int.parse('42') == 42); // parse() 方法将字符串转换为整型
  assert(int.parse('0x42') == 66); // parse() 方法将字符串转换为整型
  assert(double.parse('0.50') == 0.5); //parse() 方法将字符串转换为浮点型
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
  assert(int.parse('42', radix: 16) == 66); //通过添加 radix 参数，指定整数的进制基数
}
