void main(List<String> args) {
  final queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(105);
  queue.dequeue();

  queue.display();
}

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;
  void enqueue(data) {
    final newNode = Node(data);
    if (front == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode; 
    }
  }

  void dequeue() {
    if (front == null) {
      rear = null;
    }
    front = front!.next;
  }

  void display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
