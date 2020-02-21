import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          'Not Use Font DancingScript',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            decoration: TextDecoration.underline,
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
