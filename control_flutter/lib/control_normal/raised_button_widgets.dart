import 'package:flutter/material.dart';

class RaisedButtonWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () {
            print('Test Button');
          },
          child: Text(
            'Click Button',
            style: TextStyle(color: Colors.black),
          ),
          color: Colors.yellow,
          elevation: 4.0,
        ),
      ),
    );
  }
}
