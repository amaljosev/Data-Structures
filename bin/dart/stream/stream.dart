import 'dart:async';

// An asynchronous generator that yields a sequence of integers asynchronously.
Stream<int> asynchronousCounter(int max) async* {
  for (int i = 0; i < max; i++) {
    // Simulate an asynchronous operation with a delay.
    await Future.delayed(Duration(seconds: 1));
    yield i; // Yield the current value of 'i'. 
  }
}

void main() {
  // Create a stream controller to handle the output of the generator.
  final StreamController<int> controller = StreamController<int>();

  // Create an asynchronous counter stream.
  final Stream<int> counterStream = asynchronousCounter(5);

  // Listen to the counter stream and print the values.
  counterStream.listen((int value) {
    print('Received: $value');
  }, onDone: controller.close); // Close the stream controller when the counter stream is done.
}
