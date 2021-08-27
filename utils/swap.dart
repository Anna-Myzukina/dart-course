
extension Swap<T extends Comparable> on List<T> {
  void swap(int fromIndex, int toIndex) {
    var temp = this[fromIndex];
    this[fromIndex] = this[toIndex];
    this[toIndex] = temp;
  }
}
