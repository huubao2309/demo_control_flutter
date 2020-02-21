import 'package:flutter/material.dart';

class TextFieldControl extends StatefulWidget {
  @override
  _TextFieldWidgetsState createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldControl> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Input Text...',
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.green),
              hintStyle: TextStyle(color: Colors.red),
              icon: Icon(
                Icons.people,
                color: Colors.blue,
              ),
            ),
            onChanged: (String string) {
              setState(() {
                name = string;
              });
            },
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text('Hello $name !'),
        ],
      ),
    );
  }
}
