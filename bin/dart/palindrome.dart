void main(List<String> args) {
  String word = 'Radar';
  print(isPalindrome(word));
}

bool isPalindrome(String word) {
  word = word.toLowerCase();
  for (var i = 0, j = word.length - 1; i < j; i++, j--) {
    if (word[i] != word[j]) {
      return false;
    }
  }
  return true;
}
