import 'package:flutter/material.dart';

class ListViewControls extends StatefulWidget {
  @override
  _ListViewControlsState createState() => _ListViewControlsState();
}

class _ListViewControlsState extends State<ListViewControls> {
  List<Person> people = List<Person>();
  int count = 15;

  @override
  void initState() {
    super.initState();
    // init list person

    for (var i = 0; i < count; i++) {
      var person = Person();
      person.name = 'Test $i';
      person.age = i;
      person.job = 'IT $i';

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
              backgroundColor: getColor(position),
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

  Color getColor(int number) {
    if (number % 2 != 0) {
      return Colors.red;
    } else {
      return Colors.green;
    }
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
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set job(String value) {
    _job = value;
  }
}
