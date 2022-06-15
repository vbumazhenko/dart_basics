import 'dart:math';

class NumberSystem {
  static String toBinary(int a) {
    String result = '';
    while (a > 0) {
      var r = a % 2;
      result = r.toString() + result;
      a ~/= 2;
    }
    return result;
  }

  static int toDecimal(String a) {
    int result = 0;
    for (var i = 1; i <= a.length; i++) {
      var n = int.parse(a[i - 1]);
      result += n * pow(2, a.length - i).toInt();
    }

    return result;
  }
}
