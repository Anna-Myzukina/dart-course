import 'package:dart_algorithm_club/utils/swap.dart';

List<T> sortInAscendingOrder<T extends Comparable>(List<T> elements) {
  return quickSort(elements, (a, b) => a.compareTo(b) < 0);
}

List<T> sortInDescendingOrder<T extends Comparable>(List<T> elements) {
  return quickSort(elements, (a, b) => a.compareTo(b) > 0);
}

List<T> quickSort<T extends Comparable>(List<T> elements, bool Function(T a, T b) comparator) {
  var sortedList = List<T>.from(elements);
  _quickSort(sortedList, 0, sortedList.length - 1, comparator);
  return sortedList;
}

int _partition<T extends Comparable>(List<T> elements, int start, int end, bool Function(T a, T b) comparator) {
  var pivot = elements[end];
  var partitionIndex = start;

  for (var i = start; i < end; i++) {
    if (comparator(elements[i], pivot)) {
      elements.swap(i, partitionIndex);
      partitionIndex += 1;
    }
  }
  elements.swap(partitionIndex, end);
  return partitionIndex;
}

void _quickSort<T extends Comparable>(List<T> elements, int start, int end, bool Function(T a, T b) comparator) {
  if (start < end) {
    var partitionIndex = _partition(elements, start, end, comparator);
    _quickSort(elements, start, partitionIndex - 1, comparator);
    _quickSort(elements, partitionIndex + 1, end, comparator);
  }
}
