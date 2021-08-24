//________________Example 1____________________

class User{

    String name = "";
    void display(){ 
        print("Name: $name");

    }
}

class Worker{
    String company = "";
    void work(){

        print("Work in $company");

    }
}
class Employee extends User, Worker{ // Ошибка, множественное наследование не допускается

//_______________Example 2______________________
 void main() {
  User anna = Employee();
  anna.name = "Anna";
  anna.display(); // Employee name: Anna
}

class User {
  String name;

  User(this.name);

  void display() {
    print("Name: $name");
  }
}

class Employee implements User {
  String name = ""; // реализация поля name

// реализация метода display
  void display() {
    print("Employee name: $name");
  }
}

//________________Example 3____________________
void main() {
  Employee anna = Employee("Anna", "Flutter");
  anna.display(); // Employee name: Anna
  anna.work(); // Employee works in Flutter
}

class User {
  String name;
  User(this.name);

  void display() {
    print("Name: $name");
  }
}

class Worker {
  String company = "";

  void work() {
    print("Work in $company");
  }
}

class Employee implements User, Worker {
  String name; // реализация поля name из User
  String company; // реализация поля company из Worker

  void display() {
    // реализация метода display User
    print("Employee name: $name");
  }

  // реализация метода work из Worker
  void work() {
    print("Employee works in $company");
  }

  Employee(this.name, this.company);
}