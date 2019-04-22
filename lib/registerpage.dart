import 'package:flutter/material.dart';
import 'package:spaceconquer/taxiview.dart';

/* Register Page 2 */
class RegisterPage2 extends StatefulWidget
{
  _RegisterPage2 createState() => new _RegisterPage2();
}

class _RegisterPage2 extends State<RegisterPage2>
{
  bool _isButtonDisabled;

  @override
  void initState()
  {
    _isButtonDisabled = true;
  }

  Widget build (BuildContext context)
  {
    Function buttonAction = (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaxiView()));};
    final start = RaisedButton
    (
      child: new Text("다음", textAlign: TextAlign.center),
      onPressed: _isButtonDisabled ? null : buttonAction
    );

    void _activateButton()
    {
      _isButtonDisabled = false;
      setState(() {});
    }
    final email = TextField
    (
      keyboardType: TextInputType.emailAddress, 
      decoration: const InputDecoration(
        hintText: 'your_email@kaist.ac.kr'
      ),
      onEditingComplete: _activateButton,
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

  final text = Text
  (
    "소속 대학의 메일 계정을 적어주세요",
    textAlign: TextAlign.center
  );
}