int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  int n = 10; // You can change this value to calculate Fibonacci for a different number
  int result = fibonacci(n);
  print("Fibonacci of $n is: $result");
}
