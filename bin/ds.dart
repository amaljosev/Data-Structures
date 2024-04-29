void main(List<String> args) {
  List<int> arr=[5,6,3,4,8,2];
  bubleSort(arr);
}
bubleSort(List<int> arr){
  for (var i = 0; i < arr.length; i++) {
    for (var j = 0;j < arr.length-i-1;j++) {
      if (arr[j]>arr[j+1]) {
        int temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
  print(arr);
}

