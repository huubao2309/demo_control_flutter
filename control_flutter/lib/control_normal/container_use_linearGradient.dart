import 'package:flutter/material.dart';

class LinearGradientContainerWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(15),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: Colors.orange,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple[100], Colors.purple[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
    );
  }
}
