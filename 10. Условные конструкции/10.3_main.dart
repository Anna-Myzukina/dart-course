void main() {

//__________________Example 1______________________
  var num = 5;
  var factorial = 1;

  while (num >= 1) {
    factorial = factorial * num;
    num--;
  }
  print("Факториал числа: ${factorial}");

//__________________Example 2______________________
  var num = 10;
  do {
    print(num);
    num --;
  } while (num >= 0);
}