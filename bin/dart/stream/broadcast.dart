import 'dart:async';
import 'dart:math';

// Class representing a stock price update
class StockPrice {
  final String symbol;
  final double price;

  StockPrice(this.symbol, this.price);

  @override
  String toString() => "[$symbol: \$$price]";
}

// Function to create a broadcast stream for stock prices
Stream<StockPrice> generateStockPrices() {
  StreamController<StockPrice> controller = StreamController<StockPrice>.broadcast();

  // Simulate stock price updates every 2 seconds
  Timer.periodic(Duration(seconds: 2), (timer) {
    double newPrice = Random().nextDouble() * 100; // Random price between 0 and 100
    controller.add(StockPrice("AAPL", newPrice));
  });

  // Close the controller after 5 updates (optional)
  // Future.delayed(Duration(seconds: 10)).then((_) => controller.close());

  return controller.stream;
}

Future<void> main() async {
  // Create a broadcast stream of stock prices
  Stream<StockPrice> stockPrices = generateStockPrices();

  // Subscribe two listeners to receive updates
  StreamSubscription<StockPrice> listener1 = stockPrices.listen((price) {
    print("Investor 1: $price");
  });

  StreamSubscription<StockPrice> listener2 = stockPrices.listen((price) {
    print("Investor 2: $price");
  });

  // Wait for some time to receive updates (optional)
  await Future.delayed(Duration(seconds: 8));

  // Cancel subscriptions (optional)
  listener1.cancel();
  listener2.cancel();

  print("Investors stopped listening.");
 
}
