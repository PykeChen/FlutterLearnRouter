main() {
  var a1 = 1;
  int b1 = 1;
  print(a1==b1);

  // ~/才是取整运算符，如果使用/则是除法运算，不取整
  int k = 3;
  int j = 2;
  print(k / j); // 0.5
  print(k ~/ j); // 0

  // ??=运算符 如果 ??= 运算符前面的变量为null，则赋值，否则不赋值
  var param1 = "hello", param2 = null;
  param1 ??= "world";
  param2 ??= "world";
  print("param1 = $param1"); // param1 = hello
  print("param2 = $param2"); // param2 = world

  // ?.运算符
  var str1 = "hello world";
  var str2 = null;
  print(str1?.length); // 11
  print(str2?.length); // null

  // as运算符类似于Java中的cast操作，将一个对象强制类型转换
//  (emp as Person).teach();

  // numbers
  var a = 0;
  int b = 1;
  double c = 0.1;

  // strings
  var s1 = 'hello';
  String s2 = "world";

  // booleans
  var real = true;
  bool isReal = false;

  // lists
  var arr = [1, 2, 3, 4, 5];
  List<String> arr2 = ['hello', 'world', "123", "456"];
  List<dynamic> arr3 = [1, true, 'haha', 1.0];

  // maps
  var map = new Map();
  map['name'] = 'zhangsan';
  map['age'] = 10;
  Map m = new Map();
  m['a'] = 'a';

  //runes，Dart 中 使用runes 来获取UTF-32字符集的字符。String的 codeUnitAt and codeUnit属性可以获取UTF-16字符集的字符
  var clapping = '\u{1f44f}';
  print(clapping); // 打印的是拍手emoji的表情

  // symbols cascades
  print(#s == new Symbol("s")); // true
  Person()..eat()..sleep();
}


class Person {
  eat() {
    print("I am eating...");
  }

  sleep() {
    print("I am sleeping...");
  }

  study() {
    print("I am studying...");
  }
}