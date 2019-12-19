import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => 0;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void _testFunction(){

  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}


class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);

  final dynamic s = [1, 4, 5, 6];
  final b = [1, 4, 5, 6];
  b.forEach((item)=>{
    print(item)
  });

}


abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class B implements Circle{
  @override
  num get area => 100.0;

  num get radius => 100;

}