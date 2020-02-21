import 'package:flutter/material.dart';

import 'carousel_control/indicator_with_carousel.dart';
import 'carousel_control/infinity_scroll_carousel.dart';
import 'control_normal/alert_dialog_widgets.dart';
import 'control_normal/column_widgets.dart';
import 'control_normal/container_widgets.dart';
import 'control_normal/image_widgets.dart';
import 'control_normal/raised_button_widgets.dart';
import 'control_normal/row_widgets.dart';
import 'control_normal/text_widgets.dart';
import 'control_stateful_normal/textfield_widgets.dart';
import 'control_stateful_normal/dropdown_button_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Control Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Control Flutter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        body: DropDownButtonControls(),
      ),
    );
  }
}
