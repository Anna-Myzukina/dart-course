void main() {
//___________Example 1___________________________
  // String -> int
  var one = int.parse('1'); //1
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1'); //1.1
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString(); //'1'
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2); //3.14
  assert(piAsString == '3.14');

//___________Example 2___________________________
// объявили целое число
  int num1 = 10;

// объявили дробное число
  double num2 = 10.50;

// вывели значения
  print(num1);
  print(num2);
}
