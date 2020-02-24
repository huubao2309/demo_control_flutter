class Person {
  String _name;
  int _age;
  String _job;

  String get name => _name;
  int get age => _age;
  String get job => _job;

  set name(String value) {
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set job(String value) {
    _job = value;
  }
}
