
class Element<K, V> {
  K key;
  V value;

  Element(this.key, this.value);
}

class HashTable<K, V> {
  List<List<Element>> buckets;
  num get count => buckets.length;

  HashTable({num capacity = 0}) {
    buckets = List.filled(capacity, []);
  }

  int indexOf(K key) {
    return (key.hashCode % count).abs();
  }

  V valueForKey(K key) {
    final index = indexOf(key);
    var value;
    if (index != null) {
      for (var element in buckets[index]) {
        if (element.key == key) {
          value = element.value;
          break;
        }
      }
    }
    return value;
  }

  void update(K key, V value) {
    final index = indexOf(key);
    var isPresentInHash = false;

    for (var element in buckets[index]) {
      if (element.key == key) {
        isPresentInHash = true;
        element.value = value;
      }
    }

    if (!isPresentInHash) {
      buckets[index].add(Element(key, value));
    }
  }

  void remove(K key) {
    final index = indexOf(key);

    var indexToRemove = 0;
    for (var element in buckets[index]) {
      if (element.key == key) {
        break;
      }
      indexToRemove += 1;
    }

    buckets[index].removeAt(indexToRemove);
  }
}
