// 定义一个接口
abstract class Shape {
  void draw();
}

// 定义一个抽象类
abstract class Vehicle {
  void start();
  void stop();
}

// 实现接口和抽象类
class Circle implements Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print('Starting the car');
  }
  
  @override
  void stop() {
    print('Stopping the car');
  }
}

void main() {
  // 实例化接口和抽象类
  Shape shape = Circle();
  Vehicle vehicle = Car();
  
  // 调用方法
  shape.draw();
  vehicle.start();
  vehicle.stop();
}
