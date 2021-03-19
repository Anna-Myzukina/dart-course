import 'dart:math';

void main() {
}
// UpperCamelCase для именования Классов и определения типов
class SliderMenu {
  // ...
}

class HttpRequest {
  // ...
}

typedef num Adder(num x, num y);


// UpperCamelCase для именования расширений
extension MyFancyList<T> on List<T> { 
  // ... 
}

extension SmartIterable<T> on Iterable<T> {
  // ...
}

// lowerCamelCase для членов класса, определения верхнего уровня, переменных, параметров и именованных параметров

var count = 3;

HttpRequest httpRequest;

void align(bool clearItems) {
  // ...
}

// lowerCamelCase для имен констант

const pi = 3.14;
const defaultTimeout = 1000;
final urlScheme = RegExp('^([a-z]+):');

class Dice {
  static final numberGenerator = Random();
}
