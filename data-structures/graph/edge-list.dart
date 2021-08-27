
import 'package:dart_algorithm_club/data-structures/graph/vertex.dart';
import 'package:dart_algorithm_club/data-structures/graph/edge.dart';

class EdgeList<T> {
  Vertex<T> vertex;
  var edges;

  EdgeList(vertex) {
    this.vertex = vertex;
    edges = <Edge<T>>[];
  }
}
