import 'package:flutter/material.dart';

class ColumnAligmentWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: sizeX,
        height: sizeY,
        child: Column(
          verticalDirection: VerticalDirection.up,
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start, // Horizontal
          // crossAxisAlignment: CrossAxisAlignment.end, // Vertical
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
      Container square = Container(
        color: colors[i] as Color,
        width: 60,
        height: 60,
        child: Text(i.toString()),
      );
      i++;
      squares.add(square);
    }
    return squares;
  }
}
