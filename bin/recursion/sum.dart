
void main(List<String> args) {
  List<int> arr = [1,2,3,4,5];
  print(sumOfArray(arr, 0));
}

int sumOfArray(List<int> arr, int index) {
  if (index == arr.length) {
    return 0;
  }
  return arr[index] + sumOfArray(arr, index + 1);
}