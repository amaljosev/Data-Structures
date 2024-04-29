void main(List<String> args) {
  fibonacci(5);
}

fibonacci(int n) {
  int first = 0;
  int second = 1;

  for (var i = 0; i < n; i++) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}
