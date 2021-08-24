// Example 1
void main() {
  var name =
      'Den'; //Создали переменную типа String без явного указания типа переменной

  var age = 38; //Тип переменной int хотя мы его явно не указывали

  print('Name: $name, age: $age'); // Выведем переменные name и age
}

// Example 2
void main() {
  String name =
      'Den'; //Создали переменную типа String c указанием на тип переменной

  int age = 38; //Тип переменной int явно указали при создании переменной age

  print('Name: $name, age: $age'); // Выведем переменные name и age
}

// Example 3

void main() {
  dynamic name;
  name = 'Den';
  int age = 38;
  print('Name: $name, age: $age'); // Выведем переменные name и age
}
