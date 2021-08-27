import 'dart:collection';

import 'package:dart_algorithm_club/data-structures/linked-list/linked-list-node.dart';

class LinkedListIterator<T> implements Iterator<LinkedListNode<T>> {

  LinkedListNode<T> node;

  LinkedListIterator(this.node);

  @override
  LinkedListNode<T> get current => node;

  @override
  bool moveNext() {
    if (node != null  && node.next != null) {
      node = node.next;
      return true;
    }
    return false;
  }
}

class LinkedList<T> with IterableMixin<LinkedListNode<T>> {
  LinkedListNode<T> head;

  @override
  LinkedListNode<T> get last {
    if (head == null) {
      return null;
    }

    var element = head;
    while(element.next != null) {
      element = element.next;
    }
    return element;
  }

  int get count {
    var element = head;
    var count = 1;
    while(element.next != null) {
      element = element.next;
      count += 1;
    }
    return count;
  }

  LinkedListNode<T> nodeAt(int index) {
    if (head == null || index < 0) {
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
    var newNode = LinkedListNode(value);
    appendNode(newNode);
  }

  void appendNode(LinkedListNode<T> node) {
    if (last == null) {
      head = node;
    } else {
      last.next = node;
    }
  }

  void insert(T value, int index) {
    insertNode(LinkedListNode(value), index);
  }

  void insertNode(LinkedListNode<T> node, int index) {
    if (head == null) {
      head = node;
    } else if (index < 0 || index > length){
      throw IndexError;
    } else if (index == 0) {
      node.next = head;
      head = node;
    } else {
      final nodeToReplace = nodeAt(index);
      final previousNode = nodeAt(index - 1);
      previousNode.next = node;
      node.next = nodeToReplace;
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
  }

  T removeLast() {
    return remove(length - 1);
  }

  T remove(int index) {
    final node = removeNode(nodeAt(index));
    return node != null ? node.value : null;
  }

  LinkedListNode<T> removeNode(LinkedListNode<T> node) {
    if (length == 0) {
      throw ArgumentError;
    }

    final itr = iterator;
    var element = head;
    if (itr.current.value == node.value) {
      head = head.next;
    } else {
      do {
        element = itr.current.next;
        if (itr.current.next.value == node.value) {
          itr.current.next = itr.current.next.next;
          break;
        }
      } while(itr.moveNext());
    }
    return element;
  }

  LinkedList reverse() {
    var currentNode = head;
    var previousNode;
    var nextNode;

    while(currentNode != null) {
      nextNode = currentNode.next;
      currentNode.next = previousNode;
      previousNode = currentNode;
      currentNode = nextNode;
    }

    head = previousNode;
    return this;
  }

  @override
  Iterator<LinkedListNode<T>> get iterator => LinkedListIterator(head);
}
