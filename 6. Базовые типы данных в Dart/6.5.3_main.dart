void main() {
//___________Example 1___________________________
  Set<String> halogens = {};
  halogens.addAll(['fluorine', 'chlorine', 'bromine', 'iodine']);
  halogens.add('astatine'); // Это не вызовет ошибку
  halogens.remove('fluorine');
  print(halogens);
  print(halogens.contains('astatine'));
  print(halogens.containsAll(['astatine', 'chlorine', 'bromine', 'iodine']));
//___________Example 2___________________________
  var set = {-3, -1, 2, 4, 5, 7};
  // получим первый элемент
  print(set.first); // -3
  // получим последний элемент
  print(set.last); // 7
  // получим длинну набора
  print(set.length); // 6
  // добавим набор
  set.addAll({4, 2, 6});

  //соединим в одну строку используя запятую в качестве разделителя 
  print(set.join(", "));

  // удалим число 4
  set.remove(4);

  print(set.join(", "));

  //получим все элементы которые больше числа 2
  set = set.where((element) => element > 2).toSet();
  // выведем полученный результат через запятую
  print(set.join(", "));

//___________Example 3___________________________
  var intSet = {1, 2, 3, 5};
  for (var n in intSet) {
    print(n);
  }
  var stringSet = {"Den", "Anna", "Egor"};
  for (var s in stringSet) {
    print(s);
  }

//___________Example 4___________________________
  var set1 = {1, 2, 3, 5};
  set1.add(3); // добавляем один элемент - 3
  set1.addAll({4, 5}); // добавляем другой набор - {4, 5}
  for (var n in set1) {
    print(n); // 1 2 3 5 4
  }
}
