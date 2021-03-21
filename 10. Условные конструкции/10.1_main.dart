void main() {

//____________Example 1____________________
  var message = StringBuffer('Dart is fun');

  for (var i = 0; i < 5; i++) {
    message.write('!');
      print(message);
  }

//____________Example 2____________________
  var callbacks = [];

  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  callbacks.forEach((c) => c());

  print(callbacks);

//____________Example 3______________________
  var collection = [0, 1, 2];

  for (var x in collection) {
    print(x); // 0 1 2

  }
}