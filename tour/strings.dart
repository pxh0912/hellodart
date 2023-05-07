///https://dart.cn/guides/libraries/library-tour#strings-and-regular-expressions
void main() {
  find();
  substring();
  CaseConversion();
  trim();
  isEmpty();
  Template();
  Buffer();
  regExp();
}

void find() {
  assert('Never odd or even'.contains('odd')); //在字符串内查找特定字符串是否存在
  assert('Never odd or even'.startsWith('Never')); //检查字符串是否以特定字符串作为开头
  assert('Never odd or even'.endsWith('even')); //检查字符串是否以特定字符串作为结尾
  assert('Never odd or even'.indexOf('odd') == 6); //在字符串内查找特定字符串的位置
}

void substring() {
  //获取字符串中的子字符串或者将一个字符串分割为子字符串列表
  assert('Never odd or even'.substring(6, 9) == 'odd');
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  for (final char in 'hello'.split('')) {
    print(char);
  }
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
}

void CaseConversion() {
  //首字母大小写转换
  assert('web apps'.toUpperCase() == 'WEB APPS'); //小写转大写
  assert('WEB APPS'.toLowerCase() == 'web apps'); //大写转小写
}

void trim() {
  //移除首尾空格
  assert('  hello  '.trim() == 'hello');
}

void isEmpty() {
  //检查一个字符串是否为空（长度为 0）
  assert(''.isEmpty);
  assert('  '.isNotEmpty);
}

void Template() {
  //替换部分字符串
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  assert(greeting != greetingTemplate);
}

void Buffer() {
  //构建一个字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();
  assert(fullString == 'Use a StringBuffer for efficient string creation.');
}

void regExp() {
  var numbers = RegExp(r'\d+');
  var someDigits = 'llamas live 15 to 20 years';
  assert(numbers.hasMatch(someDigits));
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0)); // 15, then 20
  }
}
