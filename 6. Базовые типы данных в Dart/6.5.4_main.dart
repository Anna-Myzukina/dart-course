void main() {
//__________Example 1_________________
  var map = {5: "Tom"};
  map[1] = "Alice";
  map[44] = "Bob";
  map[6] = "Sam";
// перебор всех элементов
  print("Все элементы:");
  for (var item in map.entries) {
// item представляет MapEntry<K, V>
    print("${item.key} - ${item.value}");
  }
// перебор ключей
  print("Ключи элементов:");
  for (var key in map.keys) {
    print(key);
  }
// перебор значений
  print("Values элементов:");
  for (var value in map.values) {
    print(value);
  }

//____________Example 2______________

 var map1 = {"Russia": "Moscow"};
  map1.addAll({"France": "Paris", "Spain": "Madrid"}); // добавляем Map

  print(map1.containsKey("Poland")); // false
  print(map1.containsKey("France")); // true

  print(map1.containsValue("Madrid")); // true

// удаляем элемент с ключом "Spain"
  map1.remove("Spain");
  print(map1.containsKey("Spain")); // false
  print(map1.containsValue("Madrid")); // false

}
