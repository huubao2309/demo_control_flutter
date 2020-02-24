import 'package:flutter/material.dart';

class CalcFuelCost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalFuelCostState();
}

class _CalFuelCostState extends State<CalcFuelCost> {
// Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a `GlobalKey<FormState>`, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  String result = "";
  String _currency = "";
  final _currencies = ['Dollars', 'Euro', 'Pounds', 'Yen'];
  //this allows us to control the text in a textField
  TextEditingController distanceController = TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController fuelController = TextEditingController();

  @override
  void initState() {
    this._currency = _currencies[0];
  }

  void _reset() {
    distanceController.text = '';
    fuelController.text = '';
    avgController.text = '';
    setState(() {
      result = '';
    });
  }

  String _calculate() {
    double _distance = double.parse(distanceController.text);
    double _fuelCost = double.parse(fuelController.text);
    double _consumption = double.parse(avgController.text);
    double _totalCost = _distance / _consumption * _fuelCost;
    String _result = "The total cost for your trip is " +
        _totalCost.toStringAsFixed(2) +
        ' ' +
        _currency;
    return _result;
  }

  @override
  Widget build(BuildContext formContext) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    double _formPadding = 5.0;
    return Center(
        child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: _formPadding, bottom: _formPadding),
                      child: new Stack(
                          alignment: const Alignment(1.0, 1.0),
                          children: <Widget>[
                            TextField(
                              controller: distanceController,
                              style: textStyle,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "e.g. 124",
                                  labelText: "Distance",
                                  labelStyle: textStyle,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onChanged: (text) {
                                setState(() {});
                              },
                            ),
                            distanceController.text.length > 0
                                ? new IconButton(
                                    icon: new Icon(Icons.clear),
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 15.0),
                                    onPressed: () {
                                      setState(() {
                                        distanceController.clear();
                                      });
                                    })
                                : new Container(
                                    height: 0.0,
                                  )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: _formPadding, top: _formPadding),
                      child: new Stack(
                          alignment: const Alignment(1.0, 1.0),
                          children: <Widget>[
                            TextField(
                              controller: avgController,
                              style: textStyle,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "e.g. 17",
                                  labelText: "Distance per Unit",
                                  labelStyle: textStyle,
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onChanged: (text) {
                                setState(() {});
                              },
                            ),
                            avgController.text.length > 0
                                ? new IconButton(
                                    icon: new Icon(Icons.clear),
                                    padding: const EdgeInsetsDirectional.only(
                                        bottom: 15.0),
                                    onPressed: () {
                                      setState(() {
                                        avgController.clear();
                                      });
                                    })
                                : new Container(
                                    height: 0.0,
                                  )
                          ]),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: _formPadding, top: _formPadding),
                        child: Row(children: [
                          Expanded(
                            child: new Stack(
                                alignment: const Alignment(1.0, 1.0),
                                children: <Widget>[
                                  TextField(
                                    controller: fuelController,
                                    style: textStyle,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "e.g. 1.60",
                                        labelText: "Fuel Cost",
                                        labelStyle: textStyle,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    onChanged: (text) {
                                      setState(() {});
                                    },
                                  ),
                                  fuelController.text.length > 0
                                      ? new IconButton(
                                          icon: new Icon(Icons.clear),
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  bottom: 15.0),
                                          onPressed: () {
                                            setState(() {
                                              fuelController.clear();
                                            });
                                          })
                                      : new Container(
                                          height: 0.0,
                                        )
                                ]),
                          ),
                          Container(width: _formPadding * 5),
                          Expanded(
                            child: DropdownButton<String>(
                              items: _currencies.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              value: _currency,
                              style: textStyle,
                              onChanged: (value) {
                                _onDropDownChanged(value);
                              },
                            ),
                          )
                        ])),
                    Container(
                      height: _formPadding,
                    ),
                    Row(children: [
                      Expanded(
                          child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        onPressed: () {
                          setState(() {
                            result = _calculate();
                          });
                        },
                        child: Text(
                          'Submit',
                          textScaleFactor: 1.5,
                        ),
                      )),
                      Expanded(
                          child: RaisedButton(
                        color: Theme.of(context).buttonColor,
                        textColor: Theme.of(context).primaryColorDark,
                        onPressed: () {
                          _reset();
                        },
                        child: Text(
                          'Reset',
                          textScaleFactor: 1.5,
                        ),
                      )),
                    ]),
                    Container(
                        margin: EdgeInsets.only(top: _formPadding * 2),
                        child: Text(
                          result,
                          style: textStyle,
                        )),
                  ],
                ),
              ),
            )));
  }

  void _onDropDownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }
}
