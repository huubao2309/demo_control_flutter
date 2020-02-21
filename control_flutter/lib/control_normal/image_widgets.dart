import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage imageAsset = AssetImage('images/flutter.jpeg');
    return Container(
      child: Image(
        image: imageAsset,
        width: 300.0,
        height: 300.0,
      ),
    );
  }
}
