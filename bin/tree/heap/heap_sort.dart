void heapSort(List<int> arr) {
  int N = arr.length;

  for (int i = (N ~/ 2 - 1); i >= 0; i--) {
    heapify(arr, N, i);
  }

  for (int i = N - 1; i > 0; i--) {
    swap(arr, 0, i);
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int N, int i) {
  int large = i;
  int l = 2 * i + 1;
  int r = 2 * i + 2;

  if (l < N && arr[large] < arr[l]) { 
    large = l;
  }

  if (r < N && arr[large] < arr[r]) {
    large = r;
  }

  if (large != i) {
    swap(arr, i, large);
    heapify(arr, N, large);
  }
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void main() {
  List<int> arr = [12, 4, 6, 8, 89, 44, 42, 7, 8, 51, 499];
  heapSort(arr);
  print(arr);
}