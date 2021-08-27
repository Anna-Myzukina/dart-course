
import 'package:dart_algorithm_club/data-structures/graph/vertex.dart';

class Edge<T> {
  Vertex<T> from;
  Vertex<T> to;

  num weight;

  Edge(this.from, this.to, [this.weight]);

  @override
  String toString() {
    String weightString = weight ?? '';
    return '${from.toString()} -(${weightString})-> ${to.toString()}';
  }

  @override
  int get hashCode => from.hashCode * to.hashCode * weight.hashCode;

  @override
  bool operator ==(other) => other is Edge && other.from == from && other.to == to && other.weight == weight;
}
