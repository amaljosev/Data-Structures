// ignore_for_file: unused_local_variable

import 'dart:async';

// Function to create a single-subscription stream
Stream<int> generateNumbers() {
  StreamController<int> controller = StreamController<int>();
  for (int i = 1; i <= 5; i++) {
    controller.add(i);
  }
  // Closing the controller indicates the stream is complete
  controller.close();
  return controller.stream;
}

Future<void> main() async {
  // Subscribe to the stream
  StreamSubscription<int> subscription = generateNumbers().listen((number) {
    print(number);  // Output: 1, 2, 3, 4, 5
  });

  // Attempting to subscribe again would throw an error
  // StreamSubscription<int> secondSubscription = generateNumbers().listen((number) => print("Second listener: $number"));
}
