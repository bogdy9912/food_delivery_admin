extension SearchIndex on List<String> {
  List<String> get searchIndexAll {
    return where((String item) => item.isNotEmpty)
        .expand((String item) => item.split(' ').map((String value) => value.replaceFirst(',', '')))
        .toSet()
        .expand((String element) sync* {
      for (int i = 0; i < element.length; i++) {
        String x = element[i];
        for (int j = i; j < element.length; j++) {
          if (j != i) {
            x += element[j];
          }
          for (int k = j; k < element.length; k++) {
            late String y;
            if (k == j) {
              y = x;
            } else {
              y = x + element[k];
            }
//            yield element.substring(i, j).toLowerCase();
            yield y.toLowerCase();
          }
        }
      }
    })
        .where((String element) => element.isNotEmpty)
        .toSet()
        .toList();
  }
}