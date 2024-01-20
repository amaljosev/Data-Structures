void main(List<String> args) {
  final tree = BinarySearchTree();
  List<int> arr = [50, 10, 80, 20, 60, 40];
  for (var a in arr) {
    tree.insert(a);
  }
  tree.delete(20);
  tree.delete(40);
  tree.delete(60);
  tree.inOrder();
}

class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BinarySearchTree {
  Node? root;
  insert(int data) {
    var current = root;
    if (current == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = Node(data);
          return;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = Node(data);
          return;
        } else {
          current = current.right;
        }
      }
    }
  }

  // Search method
  bool search(int data) {
    return searchHelper(root, data);
  }

  bool searchHelper(Node? node, int data) {
    if (node == null) {
      return false;
    }

    if (data == node.data) {
      return true;
    } else if (data < node.data) {
      return searchHelper(node.left, data);
    } else {
      return searchHelper(node.right, data);
    }
  }

  // Delete method
  void delete(int data) {
    root = deleteHelper(root, data);
  }

  Node? deleteHelper(Node? root, int data) {
    if (root == null) {
      return root;
    }

    if (data < root.data) {
      root.left = deleteHelper(root.left, data);
    } else if (data > root.data) {
      root.right = deleteHelper(root.right, data);
    } else {
      // Node with only one child or no child
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      // Node with two children, get the inorder successor
      root.data = minValue(root.right);

      // Delete the inorder successor
      root.right = deleteHelper(root.right, root.data);
    }

    return root;
  }

  int minValue(Node? node) {
    int minValue = node!.data;
    while (node!.left != null) {
      minValue = node.left!.data;
      node = node.left;
    }
    return minValue;
  }

  inOrder() {
    inOrderHelper(root);
  }

  inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  preOrder() {
    preOrderHelper(root);
  }

  preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  postOrder() {
    postOrderHelper(root);
  }

  postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }
}
