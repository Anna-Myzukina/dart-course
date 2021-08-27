import 'package:dart_algorithm_club/utils/swap.dart';

List<T> sortInAscendingOrder<T extends Comparable>(List<T> elements) {
  return selectionSort(elements, (a, b) => a.compareTo(b) > 0);
}

List<T> sortInDescendingOrder<T extends Comparable>(List<T> elements) {
  return selectionSort(elements, (a, b) => a.compareTo(b) < 0);
}

List<T> selectionSort<T extends Comparable>(List<T> elements, bool Function(T a, T b) comparator) {
  var sortedList = List<T>.from(elements);
  for (var i = 0; i < sortedList.length; i++) {
    var currentIndex = i;
    for (var j = i + 1; j < sortedList.length; j++) {
      if (comparator(sortedList[currentIndex], sortedList[j])) {
        currentIndex = j;
      }
    }
    sortedList.swap(i, currentIndex);
  }
  return sortedList;
}
