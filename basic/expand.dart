extension StringExtension on String {
  bool isPalindrome() {
    for (int i = 0; i < this.length ~/ 2; i++) {
      if (this[i] != this[this.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}
void main() {
  String s1 = 'racecar';
  String s2 = 'hello';

  print(s1.isPalindrome()); // 输出 true
  print(s2.isPalindrome()); // 输出 false
}
