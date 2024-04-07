void main(List<String> args) {
  Graph graph = Graph();
  graph.insert(10, 20, true);
  graph.insert(20, 40, true);
  graph.insert(40, 50, true);
  graph.insert(50, 30, true);
  graph.insert(10, 30, true);
  graph.insert(30, 40, true); 

  graph.display();
  print('BFS:');
  graph.bfs(10);

  print('\nDFS:');
  graph.dfs(10);
}

class Graph {
  Map<dynamic, List<dynamic>> map = {};

  void addVertex(dynamic data) {
    map[data] = [];
  }

  void insert(dynamic vertex, dynamic edge, bool isBidirectional) {
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

  void display() {
    for (var x in map.keys) {
      print('$x: ${map[x]!.join(' ')}');
    }
  }

  void bfs(dynamic startVertex) {
    if (!map.containsKey(startVertex)) {
        print('$startVertex not present');
        return;
    }

    Set<dynamic> visited = {};
    List<dynamic> queue = [startVertex];

    while (queue.isNotEmpty) {
        dynamic vertex = queue.removeAt(0);
        if (!visited.contains(vertex)) {
            print(vertex);
            visited.add(vertex);
            List<dynamic>? edges = map[vertex];
            if (edges != null) {
                for (var edge in edges) {
                    if (!visited.contains(edge)) {
                        queue.add(edge);
                    }
                }
            }
        }
    }
}


  void dfs(dynamic startVertex) {
    if (!map.containsKey(startVertex)) {
      print('$startVertex not present');
      return;
    }

    Set<dynamic> visited = {};
    dfsTraversal(startVertex, visited);
  }

  void dfsTraversal(dynamic vertex, Set<dynamic> visited) {
    visited.add(vertex);
    print(vertex);
    List<dynamic>? edges = map[vertex];
    if (edges != null) {
      for (var edge in edges) {
        if (!visited.contains(edge)) {
          dfsTraversal(edge, visited);
        }
      }
    }
  }
}



