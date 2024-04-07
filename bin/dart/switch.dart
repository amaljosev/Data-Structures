enum Wether { sunny, cloudy, snowy, rainy ,summmor}

void main(List<String> args) {
  final wether = Wether.summmor;
  switch (wether) {
    case Wether.cloudy:
      print('cloudy day');
      break;
    case Wether.rainy:
      print('rainy day');
      break;
    case Wether.snowy:
      print("snowy day");
      break;
    case Wether.sunny:
      print('sunny day');
      break;
    default:
      print('wether not found');
      break;
  }
}
