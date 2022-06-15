class FindNumbers {
  final String str;

  FindNumbers(this.str);

  List<num> find() {
    var result = <num>[];
    var words = str.split(' ');
    for (var element in words) {
      num? number = num.tryParse(element);
      if (number != null) {
        result.add(number);
      }
    }
    return result;
  }
}
