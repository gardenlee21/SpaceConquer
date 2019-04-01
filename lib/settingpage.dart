import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SettingPage();
  }
}

class _SettingPage extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>
        [ 
        new Row (
            children: <Widget>
            [
              new Text('알림'),
              new Switch(onChanged: switchChanged, value:true)
            ],
          )
        ],
      )
    );
  }

  void switchChanged(bool value) {}
}
