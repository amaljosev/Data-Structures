class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

    void delete(int data) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }

    prev?.next = temp?.next;
  }


  insertAfter(int position, int newData) {
    final newNode = Node(newData);
    Node? current = head;
    while (current != null && current.data != position) {
      current = current.next;
    }
    if (current == null) {
      print('position not found');
    } else {
      newNode.next = current.next;
      current.next = newNode;
    }
    if (current != null && current == tail) {
      current.next = newNode;
      tail = newNode;
    }
  }

  insertBefore(int position, int newData) {
    final newNode = Node(newData);
    Node? current = head, prev;
    if (current != null && current.data == position) {
      newNode.next = head;
      head = newNode;
    }
    while (current != null && current.data != position) {
      prev = current;
      current = current.next;
    }
    if (current == null || prev == null) {
      print('position not found');
    } else {
      newNode.next = prev.next;
      prev.next = newNode;
    }
  }

  findMid() {
  if (head == null) {
    print('Linked list is empty');
    return;
  }
  
  Node? fast = head; 
  Node? slow = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  print('Middle value: ${slow!.data}');
}


  display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main(List<String> args) {
  final list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.addNode(60);
  list.addNode(70);
  list.delete(70);

  list.display();
}
