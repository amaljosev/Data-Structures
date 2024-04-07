void main(List<String> args) {
  quickSort();
}

void quickSort() {
  List<int> array = [5, 3, 7, 2];
  quickSortHelper(array, 0, array.length - 1);
  print(array);
}

void quickSortHelper(List<int> array, int start, int end) {
  if (start >= end) {
    return;
  }
  int pivot = start;
  int left = start + 1; 
  int right = end;
  while (left <= right) {
    if (array[left] > array[pivot] && array[right] < array[pivot]) {
      swap(array, left, right);
      right--;
      left++;
    }
    if (array[left] < array[pivot]) {
      left++;
    }
    if (array[right] > array[pivot]) {
      right--;
    }
  }
  swap(array, right, pivot);
  quickSortHelper(array, start, right - 1);
  quickSortHelper(array, right + 1, end);
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}