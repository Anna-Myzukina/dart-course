abstract class User {
  //Устанавливаем переменные и методы экземпляра

  void doSomething(); // Устанавливаем абстрактный метод
}

class EffectiveUser extends User {
  void doSomething(){
    // Предоставляем реализацию, поэтому метод здесь не является абстрактным
  }
}
