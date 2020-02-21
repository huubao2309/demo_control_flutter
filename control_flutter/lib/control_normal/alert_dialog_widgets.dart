import 'package:flutter/material.dart';

class ShowAlertDialogWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Text(
            'Show Alert',
            style: TextStyle(color: Colors.black),
          ),
          color: Colors.yellow,
          elevation: 4.0,
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Alert', style: TextStyle(color: Colors.red)),
      content: Text('You clicked button', style: TextStyle(color: Colors.blue)),
      actions: <Widget>[
        FlatButton(
          child: Text('OK', style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
