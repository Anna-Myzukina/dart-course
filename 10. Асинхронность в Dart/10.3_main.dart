void doWork() {
  print("print 1: Начало функции doWork");

  Future<String> messageFuture = getMessage();

  messageFuture.then((message) {
    print("print 2: Получено сообщение: $message");
  });

  print("print 3: Завершение функции doWork");
}

Future<String> getMessage() {
// имитация долгой работы с помощью задержки в 3 секунды

  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main() {
  doWork();

  print("print 4: Выполнение функции main");
}

//_________________Example 2_______________
Future<void> doWork() async {
  print("print 1: Начало функции doWork");

  String message = await getMessage();

  print("print 2: Получено сообщение: $message");

  print("print 3: Завершение функции doWork");
}

Future<String> getMessage() {
// имитация долгой работы с помощью задержки в 3 секунды

  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main() {
  doWork();

  print("print 4: Выполнение функции main");
}

//__________Example 3________________
Future<void> doWork() async {
  print("print 1: Начало функции doWork");

  try {
    String message = await getMessage();

    print("print 2: Получено сообщение: $message");
  } catch (e) {
    print("print 2 with error: Произошла ошибка: $e");
  }

  print("print 3: Завершение функции doWork");
}

Future<String> getMessage() {
// с помощью оператора throw имитируем возникновение ошибки

  return Future.delayed(Duration(seconds: 3), () => throw "Сервер не отвечает");
}

void main() {
  doWork();

  print("print 4: Выполнение функции main");
}
