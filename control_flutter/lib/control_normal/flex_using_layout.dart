import 'package:flutter/material.dart';

class FlexRowWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: sizeX,
        height: sizeY,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: createSquares(5),
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
      Expanded square = Expanded(
        flex: i,
        child: Container(
          color: colors[i] as Color,
          height: 60,
          child: Text(i.toString()),
        ),
      );
      i++;
      squares.add(square);
    }
    return squares;
  }
}
