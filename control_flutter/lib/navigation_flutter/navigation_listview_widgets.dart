import 'package:control_flutter/navigation_flutter/person_model.dart';
import 'package:flutter/material.dart';

import 'detail_navigation_widgets.dart';

class NavigationListViewControls extends StatefulWidget {
  @override
  _NavigationListViewControlsState createState() =>
      _NavigationListViewControlsState();
}

class _NavigationListViewControlsState
    extends State<NavigationListViewControls> {
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
              backgroundColor: Colors.red,
              child: Text(this.people[position].age.toString()),
            ),
            title: Text(this.people[position].name),
            subtitle: Text(this.people[position].job),
            onTap: () async {
              var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailNavigationListview(this.people[position])));

              if (result != null) {
                print('Result Navigation: $result');
              }
            },
          ),
        );
      },
    );
  }
}
