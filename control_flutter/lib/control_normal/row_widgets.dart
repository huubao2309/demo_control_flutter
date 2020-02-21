import 'package:flutter/material.dart';

class RowWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Row(
            children: <Widget>[
              Text(
                'Row 1',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              Text(
                'Row 2',
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ],
          )),
    );
  }
}
