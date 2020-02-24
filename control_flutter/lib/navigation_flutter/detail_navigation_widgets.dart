import 'package:flutter/material.dart';

import 'person_model.dart';

class DetailNavigationListview extends StatefulWidget {
  Object itemSource;
  DetailNavigationListview(this.itemSource);

  @override
  _DetailNavigationListviewState createState() =>
      _DetailNavigationListviewState();
}

// Custom Back Button on AppBar: https://inducesmile.com/google-flutter/how-to-show-app-back-button-in-flutter/
class _DetailNavigationListviewState extends State<DetailNavigationListview> {
  @override
  Widget build(BuildContext context) {
    var person = widget.itemSource as Person;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Detail ListView'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context, 'Pop Navigation'); // Send Object => Parent Page
            }),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
        child: Center(
          child: Text('Detail ListView: ${person.name}'),
        ),
      ),
    );
  }
}
