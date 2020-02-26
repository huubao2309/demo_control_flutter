import 'package:flutter/material.dart';

class Util {
  static const FLUTTER = "flutter";
  static const GOLANG = "golang";
  static const POSTGRES = "postgres";

  static const IMG_FLUTTER =
      "https://academind.com/static/82471063091d8dd5c25baba64914d893/c1b63/flutter.png";
  static const IMG_GOLANG =
      "https://redislabs.com/wp-content/uploads/2018/03/golang-redis.jpg";
  static const IMG_POSTGRES =
      "https://sp.postgresqltutorial.com/wp-content/uploads/2012/08/What-is-PostgreSQL.png";

  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
      tag: tag,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: NetworkImage(path),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
