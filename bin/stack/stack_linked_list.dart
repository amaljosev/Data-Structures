void main(List<String> args) {
  final stack = Stack();
  stack.push(12);
  stack.push(24);
  stack.push(58);
  stack.pop();

  stack.display();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(data) {
    final newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      top = null;
    } else {
      top = top!.next;
    }
  }

  void display() {
    var current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
