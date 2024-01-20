void main() {
  binarySearch();
}

binarySearch() {
  List<int> arr = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
   int left=0;
  int right=arr.length-1;
  int value = 30;
  while (left<=right) {
    double middleVal=(left+right)/2;
    int mid=middleVal.round(); 
    if (arr[mid]==value) {
      print('value found at : $mid');  
      break;
    } else if(arr[mid]>value) {
      right=mid-1;
    }else {
      left=mid+1;
    }
  }

}