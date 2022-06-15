import 'dart:math';

class DelimitersCalculator {
  static int gcd(int a, int b) {
    if (a < b) {
      var c = a;
      a = b;
      b = c;
    }
    while (b > 0) {
      a %= b;
      var c = a;
      a = b;
      b = c;
    }

    return a;
  }

  static int lcm(int a, int b) {
    var c = gcd(a, b);
    if (c != 0) {
      return (a / c * b).toInt();
    } else {
      return 0;
    }
  }

  static List<int> factorize(int a) {
    var result = <int>[];

    for (int i = 2; i <= sqrt(a); i++) {
      while (a % i == 0) {
        result.add(i);
        a = a ~/ i;
      }
    }

    if (a != 1) {
      result.add(a);
    }

    return result;
  }
}
