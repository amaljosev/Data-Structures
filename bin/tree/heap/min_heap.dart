// void main(List<String> args) {
//   List<int> array = [10, 50, 20, 40, 60, 80, 30];
//   MinHeap heap = MinHeap.fromList(array);

 
//   heap.display();

//   // heap.insert(5);
//   // heap.insert(1);
//   // heap.insert(15);
//   // print("after insertion");
//   // heap.display();

//   // heap.remove();
//   // print("after remove");
//   // heap.display();
//   // int peak = heap.peek();
//   // print("peek is: $peak");
// }

// class MinHeap {
//   List<int> heap = [];

//   MinHeap.fromList(List<int> array) {
//     buildHeap(array);
//   }

//   void buildHeap(List<int> array) {
//     heap = List<int>.from(array);
//     for (int i = parent(heap.length - 1); i >= 0; i--) {
//       shiftDown(i);
//     }
//   }


//   void shiftDown(int currentIdx) {
//     int endIdx = heap.length - 1;
//     int leftIdx = leftChild(currentIdx);
//     while (leftIdx <= endIdx) {
//       int rightIdx = rightChild(currentIdx);
//       int idxToShift;
//       if (rightIdx <= endIdx && heap[rightIdx] < heap[leftIdx]) {
//         idxToShift = rightIdx;
//       } else {
//         idxToShift = leftIdx;
//       }
//       if (heap[currentIdx] > heap[idxToShift]) {
//         swap(currentIdx, idxToShift);
//         currentIdx = idxToShift;
//         leftIdx = leftChild(currentIdx);
//       } else {
//         return;
//       }
//     }
//   }

//   int parent(int i) {
//     return (i - 1) ~/ 2;
//   }

//   int leftChild(int i) {
//     return i * 2 + 1;
//   }

//   int rightChild(int i) {
//     return i * 2 + 2;
//   }

//   void shiftUp(int currentIdx) {
//     int parentIdx = parent(currentIdx);
//     while (currentIdx > 0 && heap[parentIdx] > heap[currentIdx]) {
//       swap(currentIdx, parentIdx);
//       currentIdx = parentIdx;
//       parentIdx = parent(currentIdx);
//     }
//   }

//   void swap(int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }

//   int peek() {
//     return heap[0];
//   }

//   void remove() {
//     if (heap.isEmpty) return;

//     swap(0, heap.length - 1);
//     heap.removeLast();
//     shiftDown(0);
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftUp(heap.length - 1);
//   }

//   void display() {
//     for (int i = 0; i < heap.length; i++) {
//       print(heap[i]);
//     }
//   }
// }
