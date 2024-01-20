void main() {
  final graph = Graph();
  graph.insert(10, 20, true);
  graph.insert(20, 40, true);
  graph.insert(40, 50, true);
  graph.insert(50, 30, true);
  graph.insert(10, 30, true);
  graph.insert(30, 40, true);
  graph.bfs(10);
}

class Graph {
  Map<int, List<int>> map = {};

  addVertex(int data) {
    map[data] = [];
  }

  insert(int vertex, int edge, bool isBidirectional) {
    if (!map.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!map.containsKey(edge)) {
      addVertex(edge);
    }
    map[vertex]!.add(edge);
    if (isBidirectional) {
      map[edge]!.add(vertex);
    }
  }

  display() {
    for (var m in map.keys) {
      print('$m : ${map[m]!.join(',')}');
    }
  }
  dfs(int startVertex){
    if (!map.containsKey(startVertex)) {
      print('vertex not found');
      return;
    }
    Set<int> visited={};
    dfsHelper(startVertex,visited);
  }
  
  void dfsHelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    print(vertex);
    List<int>? edges=map[vertex];
    if (edges!= null) {
      for (var e in edges) {
        if (!visited.contains(e)) {
          dfsHelper(e, visited);
        }
      }
    }
  }

  bfs(int startVertex){
    if (!map.containsKey(startVertex)) {
      print('vertex not found');
      return;
    }
    Set<int> visited={};
    List<int>? queue=[startVertex];
    while (queue.isNotEmpty) {
      int vertex=queue.removeAt(0);
      if (!visited.contains(vertex)) {
        print(vertex);
        visited.add(vertex);
      }
      List<int>?edges=map[vertex];
      if (edges!=null) {
        for (var e in edges) {
          if (!visited.contains(e)) {
            queue.add(e);
          }
        }
      }
    }
  }
  
}
