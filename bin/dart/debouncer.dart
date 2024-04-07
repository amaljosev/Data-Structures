import 'dart:async';
import 'dart:html';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }
}

void main() {
  final debouncer = Debouncer(delay: Duration(milliseconds: 500));

  // Simulating rapid button clicks
  for (int i = 0; i < 10; i++) {
    debouncer.run(() {
      print('Button clicked');
    });
  }
}
