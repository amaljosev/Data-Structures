class TrieNode {
  final Map<String, TrieNode?> children = {}; 
  bool isEndOfWord = false;

  void insert(String word) {
    var current = this;
    for (var i = 0; i < word.length; i++) {
      var char = word[i];
      if (!current.children.containsKey(char)) {
        current.children[char] = TrieNode();
      }
      current = current.children[char]!; 
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    var current = this;
    for (var i = 0; i < word.length; i++) {
      var char = word[i];
      if (!current.children.containsKey(char)) {
        return false;
      }
      current = current.children[char]!; 
    }
    return current.isEndOfWord;
  }

  List<String> findWordsWithPrefix(String prefix) {
    var current = this;
    for (var i = 0; i < prefix.length; i++) {
      var char = prefix[i];
      if (!current.children.containsKey(char)) {
        return [];
      }
      current = current.children[char]!; 
    }

    var results = <String>[];
    collectWords(current, prefix, results);
    return results;
  }

  void collectWords(TrieNode node, String prefix, List<String> results) {
    if (node.isEndOfWord) {
      results.add(prefix);
    }
    node.children.forEach((char, child) {
      if (child != null) { 
        collectWords(child, prefix + char, results);
      }
    });
  }
}

void main(List<String> args) {
var trie = TrieNode();
trie.insert('apple');
trie.insert('ape');
trie.insert('application');
trie.insert('banana');
trie.insert('ben');

print(trie.search('apple'));   
print(trie.search('ape'));     
print(trie.search('ben'));     
print(trie.findWordsWithPrefix('be')); 

}