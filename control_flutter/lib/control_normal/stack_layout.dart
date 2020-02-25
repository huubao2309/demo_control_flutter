import 'package:flutter/material.dart';

class StackLayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Stack(
        children: createSquares(5),
      ),
    );
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    Container backGround = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepOrange,
      Colors.blue,
      Colors.indigo,
      Colors.yellow,
    ];
    List<Widget> squares = List<Widget>();
    while (i < numSquares) {
      Container square = Container(
        margin: EdgeInsets.only(
          left: (i * 30.0),
          top: (i * 30.0),
        ),
        color: colors[i] as Color,
        width: 200,
        height: 200,
        child: Text(i.toString()),
      );
      i++;
      squares.add(square);
    }
    return squares;
  }
}
