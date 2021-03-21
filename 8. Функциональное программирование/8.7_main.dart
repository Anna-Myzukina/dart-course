/// Возвращает функцию, которая добавляет [addBy] к аргументу функции.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Создайте функцию, которая добавляет 2.
  var add1 = makeAdder(2);

  // Создайте функцию, которая добавляет 4.
  var add2 = makeAdder(4);

  assert(add1(3) == 5);
  assert(add2(3) == 7);
}