//______________Example 1___________________
void main() {
  User den = User("Den", 38);
  den.checkAge();

  User.retirenmentAge = 65;
  den.checkAge();
}

class User {
  String name;
  int age;

  static int retirenmentAge = 60;

  User(this.name, this.age);

  checkAge() {
    if (age >= retirenmentAge) {
      print("Пора на пенсию");
    } else {
      print("$name тебе до пенсии еще ${retirenmentAge - age} лет");
    }
  }
}

//________________Example 2______________________

void main() {
  User den = User("Den", 38);
  den.checkAge();

  print("Пенсионный возраст ${User.retirenmentAge}");
}

class User {
  String name;
  int age;
  static const int retirenmentAge = 65;

  User(this.name, this.age);

  checkAge() {
    if (age >= retirenmentAge) {
      print("Пора на пенсию");
    } else {
      print("$name тебе до пенсии еще ${retirenmentAge - age} лет");
    }
  }
}

//________________Example 3___________________
void main() {
  int a = Operation.sum(3, 5);
  int b = Operation.subtract(15, 7);
  int c = Operation.multiply(3, 5);
  print("a=$a  b=$b  c=$c"); // a=8  b=8  c=15
}

class Operation {
  static int sum(int x, int y) => x + y;
  static int subtract(int x, int y) => x - y;
  static int multiply(int x, int y) => x * y;
}


//________________Example 4___________________
void main() {
  int a = sum(3, 5);
  int b = subtract(15, 7);
  int c = multiply(3, 5);
  print("a=$a  b=$b  c=$c"); // a=8  b=8  c=15
}

int sum(int x, int y) => x + y;

int subtract(int x, int y) => x - y;

int multiply(int x, int y) => x * y;

//________________Example 5____________________
void main() {
  User den = User("Den", 38);
  User.setRetirenmentAge(63);
  print(User.retirenmentAge);
}

class User {
  String name;
  int age;
  static int retirenmentAge = 65;

  User(this.name, this.age);

  checkAge() {
    if (age >= retirenmentAge) {
      print("Пора на пенсию");
    } else {
      print("До пенсии еще ${retirenmentAge - age} лет");
    }
  }

  static void setRetirenmentAge(int value) {
    if (value > 50 && value < 70) {
      retirenmentAge = value;
    } else {
      print("Некорректное значение");
    }
  }
}