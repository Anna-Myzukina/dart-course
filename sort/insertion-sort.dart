import 'package:dart_algorithm_club/utils/swap.dart';

List<T> sortInAscendingOrder<T extends Comparable>(List<T> elements) {
  return insertionSort(elements, (a, b) => a.compareTo(b) > 0);
}

List<T> sortInDescendingOrder<T extends Comparable>(List<T> elements) {
  return insertionSort(elements, (a, b) => a.compareTo(b) < 0);
}

List<T> insertionSort<T extends Comparable>(List<T> elements, bool Function(T a, T b) comparator) {
  var sortedList = List<T>.from(elements);
  for (var i = 1; i < sortedList.length; i++) {
    for (var j = i; j > 0; j--) {
      if (!comparator(sortedList[j], sortedList[j-1])) {
        sortedList.swap(j, j-1);
      }
    }
  }
  return sortedList;
}
