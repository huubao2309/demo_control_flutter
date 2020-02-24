import 'package:flutter/material.dart';

class BoxDecorationDemoWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: 140,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
    );
  }
}
