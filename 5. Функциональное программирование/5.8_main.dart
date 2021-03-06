void foo() {} // Функция верхнего уровня

class A {
  static void bar() {} // Статический метод
  void baz() {} // Метод экземпляра
}

void main() {
  var x;

  // Сравнение функций верхнего уровня.
  x = foo;
  assert(foo == x);

  // Сравнение статических методов.
  x = A.bar;
  assert(A.bar == x);

  // Сравнение методов экземпляра.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // Эти замыкания относятся к одному и тому же экземпляру (#2), поэтому они равны.
  assert(y.baz == x);

  // Эти замыкания относятся к разным экземплярам, ​​поэтому они не равны.
  assert(v.baz != w.baz);
}