import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        // width: 140,
        // height: 80,
        margin: EdgeInsets.only(
          left: 50.0,
          right: 50.0,
        ),
        child: Text(
          'Container',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
