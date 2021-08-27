
class BinaryTree<T> {
  T data;
  BinaryTree<T> leftChild;
  BinaryTree<T> rightChild;

  BinaryTree.createNode(this.data, [this.leftChild, this.rightChild]);

  bool get isLeaf => leftChild == null && rightChild == null;

  @override
  String toString() {
    if (this == null) {
      return '';
    }
    return 'value: ${data}, left = [${leftChild.toString()}], right = [${rightChild.toString()}]';
  }
}

extension BinaryTreeCount on BinaryTree {
  int count() {
    if (isLeaf) {
      return 1;
    } else {
      return (leftChild != null ? leftChild.count() : 0) + 1 + (rightChild != null ? rightChild.count() : 0);
    }
  }
}

extension Traversal on BinaryTree {
  void traversePreOrder(process) {
    if (this == null) {
      return;
    }
    process(data);
    leftChild.traversePreOrder(process);
    rightChild.traversePreOrder(process);
  }

  void traverseInOrder(process) {
    if (this == null) {
      return;
    }
    leftChild.traverseInOrder(process);
    process(data);
    rightChild.traverseInOrder(process);
  }

  void traversePostOrder(process) {
    if (this == null) {
      return;
    }
    leftChild.traversePostOrder(process);
    rightChild.traversePostOrder(process);
    process(data);
  }
}
