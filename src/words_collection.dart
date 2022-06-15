class WordsCollection {
  final List<String> words;

  WordsCollection(this.words);

  Map<String, int> getMap() {
    var result = <String, int>{};

    for (var word in words) {
      result[word] = (result[word] ?? 0) + 1;
    }

    return result;
  }
}
