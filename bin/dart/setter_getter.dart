class Name {
  final String _amal = 'amal';
  final String _athul = 'athul';

  String get amal => _amal;
  set myName(String name) => _amal;

  String get athul => _athul;
  set brotherName(String name) => _athul;
}

void main(List<String> args) {
  final n = Name();
  print(n.amal);
  print(n.athul);
  print(n.myName = 'kuttu');
  print(n.brotherName = 'unni');
}
