void main(List<String> args) {

  List<int> arr = [1, 5, 4, 2, 3];
  List<String> let = ['amal', 'arun', 'emil', 'jithin', 'delbin'];
  for (var x in arr) {
    print(x);
  }
  let.forEach((element) {
    print(element);
  });

  int a = 1;
  do {
    print(a);
    a++;
  } while (a <= 10);
  while (a <= 10) {
    print(a);
    a++;
  }
}
