
import 'package:flutter/material.dart';
import 'package:spaceconquer/taxiview.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '대학택시',
      home: TaxiView(),
    ); 
  }
}
