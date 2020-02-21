import 'package:flutter/material.dart';

class ListViewControls extends StatefulWidget {
  @override
  _ListViewControlsState createState() => _ListViewControlsState();
}

class _ListViewControlsState extends State<ListViewControls> {
  List<Person> people = List<Person>();
  int count = 5;

  @override
  void initState() {
    super.initState();
    // init list person
    for (var i = 0; i < count; i++) {
      var person = Person()
        ..name = 'Test $i'
        ..age = i
        ..job = 'IT $i';

      people.add(person);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        // Row
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(this.people[position].age.toString()),
            ),
            title: Text(this.people[position].name),
            subtitle: Text(this.people[position].job),
            onTap: () {
              print('Tap on: $position');
            },
          ),
        );
      },
    );
  }
}

class Person {
  String _name;
  int _age;
  String _job;

  String get name => _name;
  int get age => _age;
  String get job => _job;

  set name(String value) {
    value = _name;
  }

  set age(int value) {
    value = _age;
  }

  set job(String value) {
    value = _job;
  }
}
