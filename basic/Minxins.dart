mixin Logger {
  void log(String message) {
    print(message);
  }
}

class Person with Logger {
  String name;

  Person(this.name);

  void greet() {
    log("Hello, my name is $name");
  }
}

void main() {
  var person = Person("PXH");
  person.greet();  // 输出 "Hello, my name is PXH"
}
