import 'package:flutter/material.dart';

class ColumnWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Text(
                'Column 1',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              Text(
                'Column 2',
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ],
          )),
    );
  }
}
