
import 'package:dart_algorithm_club/data-structures/graph/edge.dart';
import 'package:dart_algorithm_club/data-structures/graph/graph.dart';
import 'package:dart_algorithm_club/data-structures/graph/vertex.dart';

class AdjacencyMatrixGraph<T> extends Graph {

  List<List<num>> adjacencyMatrix;
  List<Vertex<T>> _vertices;

  AdjacencyMatrixGraph() {
    adjacencyMatrix = [];
    _vertices = [];
  }

  @override
  List<Edge> get edges {
    var _edges = <Edge>[];
    for(var row = 0; row <= adjacencyMatrix.length; row += 1) {
      for(var column = 0; column < adjacencyMatrix[row].length; column += 1) {
        final weight = adjacencyMatrix[row][column];
        if (weight != null) {
          _edges.add(Edge(vertices[row], vertices[column], weight));
        }
      }
    }
    return _edges;
  }

  @override
  Vertex createVertex(data) {
    var matchingVertex = vertices.lastWhere((vertex) => vertex.data == data, orElse: () => null);
    if (matchingVertex == null) {
      matchingVertex = Vertex(data, adjacencyMatrix.length);

      adjacencyMatrix.add(List<num>.filled(adjacencyMatrix.length, null, growable: true));
      adjacencyMatrix.forEach((row) {
        row.add(null);
      });
      vertices.add(matchingVertex);
    }
    return matchingVertex;
  }

  @override
  List<Vertex> get vertices => _vertices;

  @override
  void addDirectedEdge(Vertex from, Vertex to, [num weight]) {
    adjacencyMatrix[from.index][to.index] = weight;
  }

  @override
  void addUnDirectedEdge(Vertex from, Vertex to, [num weight]) {
    addDirectedEdge(from, to, weight);
    addDirectedEdge(to, from, weight);
  }

  @override
  num weightFrom(Vertex sourceVertex, Vertex destinationVertex) {
    return adjacencyMatrix[sourceVertex.index][destinationVertex.index];
  }

  @override
  List<Edge> edgesFrom(Vertex sourceVertex) {
    var row = adjacencyMatrix[sourceVertex.index];
    var index = 0;
    var edges = <Edge>[];
    for (var weight in row) {
      if (weight != null) {
        edges.add(Edge(sourceVertex, vertices[index], weight));
      }
      index += 1;
    }
    return edges;
  }

  @override
  String toString() {
    var rows = <String>[];
    for(var rowIndex = 0; rowIndex < adjacencyMatrix.length; rowIndex += 1) {
      var row = <String>[];
      for(var columnIndex = 0; columnIndex < adjacencyMatrix[rowIndex].length; columnIndex += 1) {
        var weight = adjacencyMatrix[rowIndex][columnIndex];
        if (weight != null) {
          row.add(' ${weight} ');
        } else {
          row.add(' ø ');
        }
      }
      rows.add(row.join());
    }
    return rows.join('\n');
  }
}
