void main() {
  linearSearch();
}

linearSearch() {
  List<int> arr = [10, 20, 40, 50, 30, 70, 80, 90, 100];
  int value = 30;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == value) {
      print('value found at ${i + 1}th position');
      break;
    }
  }
}

