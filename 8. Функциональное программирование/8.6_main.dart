//_______________Example 1______________________

// Объявление переменной с глобальной областью видимости

bool topLevel = true;

void main() {
// Эта переменная находится внутри main и доступна в main
  var insideMain = true;

  void myFunction() {
// Эта переменная находится внутри myFunction и доступна в myFunction

    var insideFunction = true;

    void nestedFunction() {
// Эта переменная находится внутри nestedFunction и доступна в nestedFunction

      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

//________________Example 2_______________________________
Function makeAdder(num n) {
  // Lexically scoped or top level static function
  return (num i) => n + i; // вернет функцию
}

void main() {
  var addBy = makeAdder(2); // addByTwo closes over adder function
  print(addBy(3)); // выведет "5"
  print(addBy(4)); // выведет "6"
}