import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);

  factory Point.root() {
    return Point(0, 0, 0);
  }

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    return sqrt(
        pow(another.x - x, 2) + pow(another.y - y, 2) + pow(another.z - z, 2));
  }

  static double triangleArea(Point p1, Point p2, Point p3) {
    var a = p1.distanceTo(p2);
    var b = p2.distanceTo(p3);
    var c = p3.distanceTo(p1);

    var p = (a + b + c) / 2;

    return sqrt(p * (p - a) * (p - b) * (p - c));
  }
}
