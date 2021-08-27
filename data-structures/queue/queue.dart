
extension Queue<T> on List<T> {
  void enqueue(T element) {
    add(element);
  }

  T dequeue() {
    if (length > 0) {
      return removeAt(0);
    }
    throw IndexError;
  }

  T peek() {
    return isEmpty ? null : elementAt(0);
  }
}
