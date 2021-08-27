
extension Stack<T> on List<T> {
  T peek() {
    return length > 0 ? last : null;
  }

  T pop() {
    if (length > 0) {
      return removeLast();
    }
    throw IndexError;
  }

  void push(T element) {
    add(element);
  }
}
