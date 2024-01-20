void main(List<String> args) {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 6;
  int result = binarySearch(arr, target, 0, arr.length - 1);
  print(result);
}
 
int binarySearch(List<int> arr, int target, int left, int right) {
  if (left <= right) {
    int mid = (left + right) ~/ 2;
    if (arr[mid] == target) {
      return arr[mid];
    } else if (arr[mid] < target) {
      return binarySearch(arr, target, mid + 1, right);
    } else {
      return binarySearch(arr, target, left, mid - 1);
    }
  }
  return -1;
}