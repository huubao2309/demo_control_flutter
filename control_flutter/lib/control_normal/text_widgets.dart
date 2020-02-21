import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          'Container',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
