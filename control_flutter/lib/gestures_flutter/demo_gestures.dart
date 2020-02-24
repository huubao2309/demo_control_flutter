import 'package:flutter/material.dart';

class GestureDemo extends StatefulWidget {
  @override
  _GestureDemoPageState createState() => new _GestureDemoPageState();
}

class _GestureDemoPageState extends State<GestureDemo>
    with SingleTickerProviderStateMixin {
  int numTaps = 0;
  int numDoubleTaps = 0;
  int numLongPress = 0;
  double posX = 0.0;
  double posY = 0.0;
  double widthBox = 200;
  double heightBox = 150;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures and Animations"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            numTaps++;
          });
        },
        onDoubleTap: () {
          setState(() {
            numDoubleTaps++;
          });
        },
        onLongPress: () {
          setState(() {
            numLongPress++;
          });
        },
        onVerticalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            double delta = value.delta.dy;
            posY += delta;
          });
        },
        onHorizontalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            double delta = value.delta.dx;
            posX += delta;
          });
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              left: posX,
              top: posY,
              child: Container(
                width: widthBox,
                height: heightBox,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Material(
          color: Theme.of(context).primaryColorLight,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Taps: $numTaps - Double Taps: $numDoubleTaps - Long Presses: $numLongPress",
              style: Theme.of(context).textTheme.title,
            ),
          )),
    );
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - widthBox / 2;
    posY = (MediaQuery.of(context).size.height / 2) - heightBox / 2 - 30.0;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
