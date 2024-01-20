void main() { 
  List<int> arr = [8, 2, 4, 6, 1];
  List<int> result = mergesort(arr);
  print(result);
}

List<int> mergesort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  List<int> first = arr.sublist(0, mid);
  List<int> last = arr.sublist(mid);
  return join(mergesort(first), mergesort(last));
}

List<int> join(List<int> first, List<int> last) {
  List<int> newarr = List.filled(first.length + last.length, 0);
  int i = 0, j = 0, k = 0;
  while (i < first.length && j < last.length) {
    if (first[i] < last[j]) {
      newarr[k++] = first[i++];
    } else {
      newarr[k++] = last[j++];
    }
  }
  while (i < first.length) {
    newarr[k++] = first[i++];
  }
  while (j < last.length) {
    newarr[k++] = last[j++];
  }
  return newarr;
}
