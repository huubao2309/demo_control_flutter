import 'package:flutter/material.dart';

class GridViewWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3, // 3 column
        children: createSquares(50),
        mainAxisSpacing: 5.0, // Spacing Row
        crossAxisSpacing: 5.0, // Spacing Column
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.brown,
      Colors.orange,
      Colors.blue,
      Colors.green,
      Colors.red,
    ];
    List<Widget> squares = List<Widget>();
    while (i < numSquares) {
      Container square = Container(
        color: colors[i % 5] as Color,
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
