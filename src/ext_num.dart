extension ExtNum on num {
  num rootN(int n) {
    if (n == 0) {
      throw Exception('Корень нулевой степени невозможен');
    }

    if (this < 0 && n % 2 == 0) {
      throw Exception(
          'Корень четной степени из отрицательного числа невозможен');
    }

    if (n == 1) {
      return this;
    }

    num eps = 0.00001;    //допустимая погрешность
    num root = this / n;  //начальное приближение корня
    num rn = this;        //значение корня последовательным делением

    while ((root - rn).abs() >= eps) {
      rn = this;
      for (int i = 1; i < n; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
    }

    return root;
  }
}
