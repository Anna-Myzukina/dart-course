
void main() {
  var x = 88; //Тип переменной int

  var str = 'hello'; //Тип переменной string

  var list = [1, 2, 3]; // Тип переменной List
}


void main() {

var x = 4;

print(x);// x = 4

x = 'Four';// Ошибка! x представляет целые числа, а не строки

print(x);

}


void main() {
  dynamic x = 4;

  print(x); // x = 4

  x = 'Four'; // Тип динамически поменяется на String

  print(x); // 'Four'
}