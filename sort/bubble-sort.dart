import 'package:dart_algorithm_club/utils/swap.dart';

List<T> sortInAscendingOrder<T extends Comparable>(List<T> elements) {
  return bubbleSort(elements, (a, b) => a.compareTo(b) > 0);
}

List<T> sortInDescendingOrder<T extends Comparable>(List<T> elements) {
  return bubbleSort(elements, (a, b) => a.compareTo(b) < 0);
}

List<T> bubbleSort<T extends Comparable>(List<T> elements, bool Function(T a, T b) comparator) {
  var sortedList = List<T>.from(elements);
  for (var i = 0; i < sortedList.length; i++) {
    for (var j = i; j < sortedList.length; j++) {
      if (comparator(sortedList[i], sortedList[j])) {
        sortedList.swap(i, j);
      }
    }
  }
  return sortedList;
}
