
import 'package:dart_algorithm_club/data-structures/graph/edge.dart';
import 'package:dart_algorithm_club/data-structures/graph/vertex.dart';

abstract class Graph<T> {
  Vertex<T> createVertex(T data);
  void addDirectedEdge(Vertex<T> from, Vertex<T> to, [num weight]);
  void addUnDirectedEdge(Vertex<T> from, Vertex<T> to, [num weight]);
  num weightFrom(Vertex<T> sourceVertex, Vertex<T> destinationVertex);
  List<Edge<T>> edgesFrom(Vertex<T> sourceVertex);

  List<Edge<T>> get edges;
  List<Vertex<T>> get vertices;

}
