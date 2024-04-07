class MinHeap {
  List<int> heap = [];
  MinHeap(List<int> arr) {
    buildHeap(arr);
  }
  buildHeap(List<int> arr) {
    heap = [...arr];
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i, heap.length - 1);
    }
  }

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return (i * 2) + 1;
  }

  int rightChild(int i) {
    return (i * 2) + 2;
  }

  shiftDown(int currentIdx, int endIdx) {
    int leftIdx = leftChild(currentIdx);
    while (leftIdx <= endIdx) {
      int rightidx = rightChild(currentIdx);
      int idxRotate;
      if (rightidx <= endIdx && heap[rightidx] > heap[leftIdx]) {
        idxRotate = rightidx;
      } else {
        idxRotate = leftIdx;
      }
      if (heap[currentIdx] < heap[idxRotate]) {
        swap(currentIdx, idxRotate);
        currentIdx = idxRotate;
        leftIdx = leftChild(currentIdx);
      } else {
        return;
      }
    }
  }

  shiftUp(int currentIdx) {
    int parentIdx = parent(currentIdx);
    while (currentIdx > 0 && heap[parentIdx] > heap[currentIdx]) {
      swap(parentIdx, currentIdx);
      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  insert(int data) {
    heap.add(data);
    shiftUp(heap.length - 1);
  }

  delete() {
    if (heap.isEmpty) return;
    swap(0, heap.length - 1);
    heap.removeLast();
    shiftDown(0, heap.length - 1);
  }

  swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  sort() {
    for (var i = heap.length - 1; i >= 0; i--) {
      swap(0, i);
      shiftDown(0, i - 1);
    }
  }

  display() {
    for (var e in heap) {
      print(e);
    }
  }
}

void main(List<String> args) {
  List<int> arr = [15, 66, 12, 5, 17, 16, 2, 13];
  final heap = MinHeap(arr);
  heap.sort();

  heap.display();
}
