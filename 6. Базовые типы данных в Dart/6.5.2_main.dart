void main (){
  //__________Example 1___________________________
  var fruits = ['apples', 'oranges'];
  
  // Получаем доступ к элементу списка по индексу.
  assert(fruits[0] == 'apples');
  print("1. fruits[0] будет: ${fruits[0]}");
  
  // Находим элемент в списке.
  assert(fruits.indexOf('apples') == 0);
  print("2. fruits.indexOf('apples') будет:  ${fruits.indexOf('apples')}");
  
  // Если мы попытаемся обратиться по несуществующему индексу, то мы столкнемся с   ошибкой:
  
  assert(fruits[4] == 'apples'); //Ошибка
  print("3. fruits[4] будет: ${fruits[4]}");

  //___________Example 2_______________________
  var list = ['apples', 'bananas', 'oranges'];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  //___________Example 3_______________________

  var lists = ['apples', 'bananas', 'oranges'];
  for (var n in lists) {
   print(n);
  }

  //_____________Example 4_______________________

  var fruit = ['bananas', 'apples', 'oranges'];

// Sort a list.
  fruit.sort((a, b) => a.compareTo(b));

  print(fruit);

  //_____________Example 5___________________________

  var list1 = [3];
  list1.add(1);
  list1.add(4);
  list1.add(5);
  for (var n in list1) {
    print(n);
  }

  //_____________Example 6___________________________

  var list2 = List.generate(4, (int index) => index + 1, growable: false);
  print(list2); // фиксированный список [1, 2, 3, 4]
  list2[0] = 3;
  list2[1] = 7;
  list2[2] = 11;
  list2[3] = 15;
//list2.add(1); //Error нельзя добавить новый элемент
  for (var n in list2) {
    print(n);

  //_____________Example 7___________________________

    var list = [-3, -1, 2, 4, 5, 7];
// получим первый элемент
  print(list.first); // -3
// получим последний элемент
  print(list.last); // 7
// получим длину списка
  print(list.length); // 6
// добавим список
  list.addAll([4, 6]);
// соединим элементы списка в строку, разделитель запятая
  print(list.join(", ")); // -3, -1, 2, 4, 5, 7, 4, 6
// отсортируем список
  list.sort();
  print(list.join(", ")); // -3, -1, 2, 4, 4, 5, 6, 7
// удалим число 4
  list.remove(4);
// удалим второй элемент
  list.removeAt(1);
  print(list.join(", ")); // -3, 2, 4, 5, 6, 7
// получим элементы больше  2
  list = list.where((element) => element > 2).toList();
  print(list.join(", ")); // 4, 5, 6, 7

  }
}