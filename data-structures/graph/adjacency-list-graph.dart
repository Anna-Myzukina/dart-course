

import 'package:dart_algorithm_club/data-structures/graph/edge-list.dart';
import 'package:dart_algorithm_club/data-structures/graph/edge.dart';
import 'package:dart_algorithm_club/data-structures/graph/graph.dart';
import 'package:dart_algorithm_club/data-structures/graph/vertex.dart';

class AdjacencyListGraph<T> extends Graph {

  var adjacencyList;

  AdjacencyListGraph() {
    adjacencyList = <EdgeList<T>>[];
  }

  @override
  List<Edge> get edges {
    var edges = <Edge<T>>{};
    adjacencyList.forEach((EdgeList edgeList) {
      edges.addAll(edgeList.edges);
    });
    return edges.toList();
  }

  @override
  List<Vertex> get vertices {
    var vertices = <Vertex>[];
    adjacencyList.forEach((EdgeList edgeList) {
      vertices.add(edgeList.vertex);
    });
    return vertices;
  }

  @override
  Vertex createVertex(data) {
    var matchingVertex = vertices.lastWhere((vertex) => vertex.data == data, orElse: () => null);

    if (matchingVertex == null) {
      matchingVertex = Vertex(data, adjacencyList.length);
      adjacencyList.add(EdgeList(matchingVertex));
    }
    return matchingVertex;
  }

  @override
  void addDirectedEdge(Vertex from, Vertex to, [num weight]) {
    var edge = Edge(from, to, weight);
    var edges = adjacencyList[from.index].edges;
    edges.add(edge);
  }

  @override
  void addUnDirectedEdge(Vertex from, Vertex to, [num weight]) {
    addDirectedEdge(from, to, weight);
    addDirectedEdge(to, from, weight);
  }

  @override
  num weightFrom(Vertex sourceVertex, Vertex destinationVertex) {
    var edges = adjacencyList[sourceVertex.index].edges;
    var matchingEdge;
    for(Edge edge in edges) {
      if (edge.to == destinationVertex) {
        matchingEdge = edge;
        break;
      }
    }
    return matchingEdge ? matchingEdge.weight : null;

  }

  @override
  List<Edge<T>> edgesFrom(Vertex sourceVertex) {
    var edgeList = adjacencyList[sourceVertex.index];
    if (edgeList) {
      return edgeList.edges;
    }
    return null;
  }

  @override
  String toString() {
    var rows = <String>[];
    for (var edgeList in adjacencyList) {
      if (edgeList.edges.length == 0) {
        continue;
      }

      var row = <String>[];
      for(var edge in edgeList.edges) {
        row.add('${edge.to.data}: ${edge.weight}');
      }
      rows.add('${edgeList.vertex.data} -> [${row.join(', ')}]');
    }
    return rows.join('\n');
  }
}
