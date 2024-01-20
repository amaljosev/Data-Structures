void main(List<String> args) {
  final queue = Queue();
  queue.enQueue(14);
  queue.enQueue(54);
  queue.enQueue(654);
  queue.deQueue();
  queue.deQueue();
  queue.display();
}

class Queue {
  List array = [];
  void enQueue(data) {
    array.add(data);
  }

  void deQueue() {
    array.removeAt(0);
  }

  void display() {
    for (var i = 0; i < array.length; i++) {
      print(array[i]);
    }
  }
}
