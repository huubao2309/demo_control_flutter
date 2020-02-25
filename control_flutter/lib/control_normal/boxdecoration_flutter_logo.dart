import 'package:flutter/material.dart';

class BoxDecorationFlutterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      width: 300.0,
      height: 300.0,
      child: FlutterLogo(),
      decoration: BoxDecoration(
        color: Colors.orange,
        gradient: LinearGradient(
          colors: [Colors.pink[50], Colors.pink[500]],
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }
}
