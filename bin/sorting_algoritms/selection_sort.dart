void main() {
  insertionSort();
}

insertionSort() {
  List<int> arr = [21, 15, 10, 8, 4, 46, 9, 23, 6];

  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  print(arr);
}
