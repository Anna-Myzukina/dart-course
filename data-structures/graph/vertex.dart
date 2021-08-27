
class Vertex<T> {
  T data;
  int index;

  Vertex(this.data, this.index);

  @override
  bool operator ==(o) => o is Vertex && o.data == data && o.index == index;

  @override
  int get hashCode => data.hashCode * index.hashCode;

  @override
  String toString() => '${index}: ${data}';
}
