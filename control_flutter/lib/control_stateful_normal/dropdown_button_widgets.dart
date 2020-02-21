import 'package:flutter/material.dart';

class DropDownButtonControls extends StatefulWidget {
  @override
  _DropDownButtonWidgetsState createState() => _DropDownButtonWidgetsState();
}

class _DropDownButtonWidgetsState extends State<DropDownButtonControls> {
  String name = '';
  final _children = ['Naruto', 'Luffy', 'Songoku', 'Mabu'];
  String _child = 'Luffy';

  @override
  void initState() {
    super.initState();
    name = _child;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _children.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _child, // init dropdown boxs
            onChanged: (String value) {
              setState(() {
                this._child = value;
                name = value;
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
