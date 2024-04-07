class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node? current = head;
    Node? newNode = Node(data);
    if (current == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void delete(int data) {
    var current = head;
    Node? prev;
    if (current != null && current==head) {
      head = current.next;
      return;
    }
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }
    if (current == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }
    prev!.next = current!.next;
  }
}

void main(List<String> args) {
  final l = LinkedList();
  l.addNode(10);
  l.addNode(52);
  l.addNode(15);
  l.addNode(65);
  l.delete(10
  );
  l.display();
}
