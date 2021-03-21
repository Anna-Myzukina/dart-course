void main() {

//_____________Example 1_____________
  void hello() {
    print("Hello!");
  }
  hello();
  hello();

//____________Example 2_______________
  void showMessage() {
    void hello() {
      print("Hello World!");
    }

    hello();
    hello();
  }

  showMessage();
//____________Example 3_______________
  void welcome() {
    var message = "Welcome!";
    print(message);
  }

  print(message);

}
