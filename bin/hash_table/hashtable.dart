class HashTable {
  List<dynamic> array = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  ];
  int findPosition(String key) {
    int sum = 0;
    for (var i = 0; i < key.length; i++) {
      int ascii = key.codeUnits[i];
      sum = sum + ascii;
    }
    int result = sum % array.length;
    return result;
  }

  void addToList(String key,int value) {
    int index = findPosition(key);
    if (array[index] == null) {
      array[index] = value;
    } else {
      int i = 1;
      while (array[(index + i) % array.length] != null) {
        i++;
      }
      array[(index + i) % array.length] = value;
    }
  }

  void display(String key) {
    var index=findPosition(key);
    if(array[index]!=null){
      print(array[index]);  
    } else{
      print('key not found');
    }
}
}


void main(List<String> args) {
  HashTable hashing = HashTable();
  hashing.addToList('amal',10);
  hashing.addToList('fasil',20);
  hashing.addToList('suhail',30);
  hashing.display('fasil');
  
}