class TreeNode<T> {
  T value;
  TreeNode parent;
  var children;

  TreeNode(this.value) {
    children = List<TreeNode<T>>();
  }

  void addChild(node) {
    children.add(node);
    node.parent = this;
  }

  TreeNode search(T value) {
    if (value == this.value) {
      return this;
    }

    TreeNode node;
    for (var child in children) {
      node = child.search(value);
      if (node != null) {
        break;
      }
    }

    return node;
  }
}
