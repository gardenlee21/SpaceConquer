
import 'package:flutter/material.dart';
import 'package:spaceconquer/initpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '대학택시',
      home: InitPage(),
      theme: ThemeData(fontFamily: 'NanumSquareRound'),
      // routes: RouteSe,
    ); 
  }
}
