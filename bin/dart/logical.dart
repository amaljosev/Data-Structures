//
////
/////find second largest number of an array and sum the even numbers using single loop
//
///
void main() {
  List<int> arr=[1,2,3,4,100,5,6,7,8,9,10];
  int largest=arr[0];
  int secondLargest=arr[0];
  int sum=0;
  for (int i = 0; i < arr.length; i++) {
    if(arr[i]>largest){
      secondLargest=largest;
      largest=arr[i];
    }else if(arr[i]>secondLargest&&arr[i]!=largest){
      secondLargest=arr[i];
      
    }
    if(arr[i]%2==0){
      sum+=arr[i];
    }
  }
  print(largest);
  print(secondLargest);
  print(sum);
}
