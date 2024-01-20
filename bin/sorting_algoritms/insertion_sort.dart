void main() {
  insertionSort();
}

insertionSort() {
  List<int> arr = [1, 5, 10, 8, 4, 6, 9, 23, 6];

  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }

  print(arr);
}
