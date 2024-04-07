void main() {
  try {
    // Code that may throw an exception
    int result = 10 ~/ 0; // Division by zero will throw an exception
    print(
        "Result: $result"); // This line will not be executed if an exception occurs
  } catch (e) {
    // Catch block to handle the exception
    print("An error occurred: $e");
  } finally {
    // Finally block, always executed whether an exception occurred or not
    print("Finally block executed");
  }
}
