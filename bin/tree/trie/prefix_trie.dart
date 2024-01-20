void main(List<String> args) {
  final trie=Trie('amal');
  print(trie.contains('ama'));
}
class TrieNode {
  Map<String, TrieNode> childern = {};
  TrieNode();
}

class Trie {
  final root = TrieNode();
  static const endSymbol = '*';
  Trie(String str) {
    populatePrefixTrie(str);
  }
  void populatePrefixTrie(String str) {
    for (var i = 0; i < str.length; i++) {
      insertString(0, str.substring(0, i + 1));
    }
  }

  insertString(int index, String str) {
    var node = root;
    for (var i = index; i < str.length; i++) {
      var letter = str[i];
      if (!node.childern.containsKey(letter)) {
        var newNode = TrieNode();
        node.childern[letter] = newNode;
      }
      node = node.childern[letter]!;
    }
    node.childern[endSymbol] = TrieNode();
  }

  bool contains(String str){
    var node=root;
    for (var i = 0; i < str.length; i++) {
      var letter=str[i];
      if (!node.childern.containsKey(letter)) {
        return false;
      }
      node=node.childern[letter]!;
    }
    return node.childern.containsKey(endSymbol);
  }
}
