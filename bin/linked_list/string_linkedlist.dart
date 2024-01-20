class Node {
  String data;
  Node? next;
  Node(this.data);
}

class StringLinkedList {
  Node? head;
  Node? tail;
  addNode(String data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }
  addReverse(String data){
    final newNode=Node(data);
    if (head==null) {
      head=newNode;
      tail=newNode;
    }else{
      newNode.next=head;
      head=newNode;
    }
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
  final list=StringLinkedList();

  String name='amal';
  for (var i = 0; i < name.length; i++) {
    list.addReverse(name[i]);
  }
  list.display();
}