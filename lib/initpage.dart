import 'package:flutter/material.dart';
import 'package:spaceconquer/taxiview.dart';
//import 'package:spaceconquer/loginpage.dart';
import 'package:spaceconquer/registerpage.dart';

class InitPage extends StatelessWidget
{
  
  Widget build (BuildContext context)
  {
    final logo = Image.asset('assets/images/icon_noguideline.png', height: 220, width: 220);
    final login = new RaisedButton
    (
      child: Text('로그인',
      style: TextStyle(fontSize:28.0, fontFamily: "BMJUA")),
      color: Colors.white,
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaxiView()));
      }
    );
    
    final start = new RaisedButton
    (
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegisterPage2()));    
      },
      color: Colors.white,
      child: const Text('시작하기',
      style: TextStyle(fontSize:32.0, fontFamily: "BMJUA"))
    );

    final text1 = Text('대학생 택시 동승 서비스',
                  style: TextStyle(color: Colors.white, fontSize:20.0),
                  textAlign: TextAlign.center);
    final text2 = Text('지금까지 개설된 방 961개!',
                style: TextStyle(color: Colors.yellow, fontSize:25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center);
    final text3 = Text('이미 계정이 있으시다면     ',
                  style:TextStyle(color: Colors.white, fontSize:20.0),
                textAlign: TextAlign.center);

    return Scaffold
    (
      backgroundColor: const Color(0xff52abff),
      body: new Column 
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            new Expanded(
              flex:10,
              child: new Container(
              child: logo,
              alignment : Alignment(0.0, 1.0),
              ),
            ),
            new Expanded(
              flex:1,
              child: new Container(
                  child: text1,
                  alignment: Alignment(0.0, 0.0),
              )
            ),
            new Expanded(
              flex:2,
              child: new Container(
                child: text2,
                alignment: Alignment(0.0, 0.0),
              ),
            ),
            new Expanded(
              flex:2,
              child: new Container(
                width: 250,
                child : start,
              ),
            ),
            new Expanded(
              flex:4,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  text3,
                  login,
                ],),)
          ],
        )
    );
  }

}