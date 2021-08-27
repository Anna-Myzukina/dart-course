
class DoublyLinkedListNode<T> {
  T value;
  DoublyLinkedListNode<T> previous;
  DoublyLinkedListNode<T> next;

  DoublyLinkedListNode(this.value, {this.previous, this.next});
}
