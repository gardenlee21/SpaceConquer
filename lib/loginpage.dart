import 'package:flutter/material.dart';
import 'package:spaceconquer/taxiview.dart';

class LoginPage extends StatelessWidget
{

  Widget build (BuildContext context)
  {
    final login = FlatButton
    (
      child: Text('이미 회원이십니까?'),
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaxiView()));
      }
    );
    final start = new RaisedButton
    (
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage2()));    
      },
      color: Colors.white,
      child: const Text('시작하기')
    );

    return Scaffold
    (
      backgroundColor: const Color(0xff52abff),
      body: new Column 
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          //logo,
          Text('대학생 택시 동승 서비스', textAlign: TextAlign.center),
          start,
          login
        ],
      )
    );
  }


 /* final logo = Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child : Image.asset('images/icon.png')
    )
  );*/
}

/* Login Page 2 */
class LoginPage2 extends StatefulWidget
{
  _LoginPage2 createState() => new _LoginPage2();
}

class _LoginPage2 extends State<LoginPage2>
{
  bool _isButtonDisabled;

  @override
  void initState()
  {
    _isButtonDisabled = false;
  }

  Widget build (BuildContext context)
  {
    final start = RaisedButton
    (
      child: new Text("다음", textAlign: TextAlign.center),
      onPressed: ()
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaxiView()));
      },
    );

    return Scaffold
    (
      backgroundColor: const Color(0xff52abff),
      body: new Column 
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [ 
          text,
          email,
          start
        ]
      )
    );
  }
  final email = TextFormField
    (
    keyboardType: TextInputType.emailAddress
    );

  final text = Text
  (
    "소속 대학의 메일 계정을 적어주세요",
    textAlign: TextAlign.center
  );
}