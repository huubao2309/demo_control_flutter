import 'package:flutter/material.dart';

class BoxDecorationImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage imageAsset = AssetImage('images/Flutter_noBackground.png');
    return Container(
      margin: EdgeInsets.all(50.0),
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: Colors.orange,
        gradient: LinearGradient(
          colors: [Colors.pink[50], Colors.pink[500]],
        ),
        image: DecorationImage(
          image: NetworkImage(
              'https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }
}
