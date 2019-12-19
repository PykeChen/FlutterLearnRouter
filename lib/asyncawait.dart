import 'dart:async';
import 'package:http/http.dart' as http;

//import 'dart:html';
import 'dart:math' show Random;

Future<String> getNetData() async {
  http.Response res = await http.get("http://www.baidu.com");
  return res.body;
}

// We changed 5 lines of code to make this sample nicer on
// the web (so that the execution waits for animation frame,
// the number gets updated in the DOM, and the program ends
// after 500 iterations).

main() async {
  print('Compute π using the Monte Carlo method.');
//  var output = querySelector("#output");
  Iterable<double> iter = computePi();
  print('====markline=====');
  print(iter.elementAt(0));

//  for (var estimate in iter.take(1)) {
//    print('π ≅ $estimate');
//    print('π2 ≅ ${estimate.toStringAsFixed(5)}');
////    output.text = estimate.toStringAsFixed(5);
////    await Future<100>;
//  }

//  getNetData().then((str) {
//    print(str);
//  });
}

/// Generates a stream of increasingly accurate estimates of π.
Iterable<double> computePi({int batch: 10}) sync* {
  var total = 0;
  var count = 0;
  print('first A ======= ');
  while (true) {
    print('first B ======= ');
    var points = generateRandom().take(batch);
    print('points' + points.length.toString());
    var inside = points.where((p) => p.isInsideUnitCircle);
    total += batch;
    count += inside.length;
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int seed]) sync* {
  final random = Random();
  while (true) {
    final point = Point(random.nextDouble(), random.nextDouble());
    print('x = ${point.x}, y = ${point.y}');
    yield point;
  }
}

class Point {
  final double x, y;

  const Point(this.x, this.y);

  bool get isInsideUnitCircle => x * x + y * y <= 1;
}
