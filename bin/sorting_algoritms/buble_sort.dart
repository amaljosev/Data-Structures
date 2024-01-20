void main() {
  bubleSort();
}

bubleSort() {
  List<int> arr = [1, 5, 10, 8, 4, 6, 9, 23, 6];
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  print(arr);
}
