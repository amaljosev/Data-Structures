class Node {
  dynamic data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void delete(int data) {
    Node? temp = head;
    if (temp == null) {
      return;
    }
    while (temp != null && temp.data != data) {
      temp = temp.next;
    }

    if (temp == head) {
      head = head?.next;
      if (head != null) {
        head?.prev = null;
      }
    } else if (temp == tail) {
      tail = tail?.prev;
      if (tail != null) {
        tail?.next = null;
      }
    }
    temp?.prev?.next = temp.next;
    temp?.next?.prev = temp.prev;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insertAfter(int position, int data) {
    final newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != position) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    newNode.prev = temp;
    newNode.next = temp.next;
    temp.next = newNode;

    if (temp == tail) {
      tail = newNode;
    } else {
      newNode.next!.prev = newNode;
    }
  }

  void insertBefore(int position, int data) {
    final newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != position) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    newNode.next = temp;
    newNode.prev = temp.prev;
    temp.prev = newNode;

    if (temp == head) {
      head = newNode;
    } else {
      newNode.prev!.next = newNode;
    }
  }
}


void main() {
  final linkedList = DoubleLinkedList();
  linkedList.addNode(2);
  

  linkedList.display();
}
