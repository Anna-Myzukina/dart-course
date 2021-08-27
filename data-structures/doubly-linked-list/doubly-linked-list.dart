
import 'dart:collection';

import 'package:dart_algorithm_club/data-structures/doubly-linked-list/doubly-linked-list-node.dart';

class DoublyLinkedListIterator<T> implements Iterator<DoublyLinkedListNode<T>> {

  DoublyLinkedListNode node;

  DoublyLinkedListIterator(this.node);

  @override
  DoublyLinkedListNode<T> get current => node;

  @override
  bool moveNext() {
    if (node != null  && node.next != null) {
      node = node.next;
      return true;
    }
    return false;
  }
}

class DoublyLinkedList<T> with IterableMixin<DoublyLinkedListNode<T>> {

  DoublyLinkedListNode<T> head;

  @override
  DoublyLinkedListNode<T> last;

  int get count {
    final itr = iterator;
    var count = 0;
    while(itr.moveNext()) {
      count += 1;
    }
    return count + 1;
  }

  @override
  Iterator<DoublyLinkedListNode<T>> get iterator => DoublyLinkedListIterator(head);

  DoublyLinkedListNode<T> nodeAt(int index) {
    if (head == null || index < 0 || index > length) {
      throw IndexError;
    }

    var element = head;
    for(var iterator = 0; iterator < index; iterator+=1) {
      if (iterator == index) {
        break;
      }
      element = element.next;
    }
    return element;
  }

  void append(T value) {
    var newNode = DoublyLinkedListNode(value);
    appendNode(newNode);
  }

  void appendNode(DoublyLinkedListNode<T> node) {
    if (head == null && last == null) {
      head = node;
      last = node;
    } else {
      node.previous = last;
      last.next = node;
      last = node;
    }
  }

  void insert(T value, int index) {
    insertNode(DoublyLinkedListNode(value), index);
  }

  void insertNode(DoublyLinkedListNode<T> node, int index) {
    if (head == null) {
      head = node;
      last = node;
    } else if (index < 0 || index > length){
      throw IndexError;
    } else if (index == 0) {
      node.next = head;
      head.previous = node;
      head = node;
    } else {
      final nodeToReplace = nodeAt(index);
      final previousNode = nodeToReplace.previous;
      previousNode.next = node;
      node.previous = previousNode;
      node.next = nodeToReplace;
      nodeToReplace.previous = node;
    }
  }

  List<T> toArray() {
    var itr = iterator;
    var array = [itr.current.value];

    while(itr.moveNext()) {
      array.add(itr.current.value);
    }
    return array;
  }

  void removeAll() {
    head = null;
    last = null;
  }

  T removeLast() {
    return remove(length);
  }

  T remove(int index) {
    final node = removeNode(nodeAt(index));
    return node != null ? node.value : null;
  }

  DoublyLinkedListNode<T> removeNode(DoublyLinkedListNode<T> node) {
    if (length == 0 || (node.previous == null && node.next == null)) {
      throw ArgumentError;
    }

    final previousElement = node.previous;
    final nextElement = node.next;

    if (previousElement != null) {
      previousElement.next = nextElement;
    } else {
      head = nextElement;
    }

    if (nextElement != null) {
      nextElement.previous = previousElement;
    } else {
      last = previousElement;
    }
    return node;
  }

  DoublyLinkedList reverse() {
    var currentNode = head;
    var previousNode;
    var nextNode;

    while (currentNode != null) {
      nextNode = currentNode.next;
      previousNode = currentNode.previous;

      currentNode.next = previousNode;
      currentNode.previous = nextNode;

      previousNode = currentNode;
      currentNode = nextNode;
    }

    last = head;
    head = previousNode;

    return this;
  }
}
