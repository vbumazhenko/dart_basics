class NumbersCollection {
  final List<String> words;
  final Map<String, int> numbersMap = <String, int>{};

  NumbersCollection(this.words) {
    numbersMap['zero'] = 0;
    numbersMap['one'] = 1;
    numbersMap['two'] = 2;
    numbersMap['three'] = 3;
    numbersMap['four'] = 4;
    numbersMap['five'] = 5;
    numbersMap['six'] = 6;
    numbersMap['seven'] = 7;
    numbersMap['eight'] = 8;
    numbersMap['nine'] = 9;
  }

  Set<int> getNumbers() {
    var result = <int>{};

    for (var word in words) {
      var number = numbersMap[word];
      if (number != null) {
        result.add(number);
      }
    }

    return result;
  }
}
