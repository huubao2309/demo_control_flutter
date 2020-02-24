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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        child: Stack(
          children: <Widget>[
            Positioned(
              left: (MediaQuery.of(context).size.width / 4),
              top: (MediaQuery.of(context).size.height / 4),
              child: Container(
                width: 200,
                height: 200,
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
}
