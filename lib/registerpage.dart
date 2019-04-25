import 'package:flutter/material.dart';
import 'package:spaceconquer/taxiview.dart';
import 'package:flutter/cupertino.dart';

//repeatedly used in every RegisterPage
Widget _createText(String text, [TextStyle tb]) => Text
(
  text, textAlign: TextAlign.center
);

/* Register Page 1 */
class RegisterPage1 extends StatefulWidget
{
  _RegisterPage1 createState() => new _RegisterPage1();
}

class _RegisterPage1 extends State<RegisterPage1>
{
  bool _isButtonDisabled = false;

  Widget build (BuildContext context)
  {
    Function buttonAction = (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage2()));};
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

    return Scaffold
    (
      backgroundColor: const Color(0xff52abff),
      body: new Column 
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [ 
          _createText("소속 대학을 선택해주세요."),
          start
        ]
      )
    );
  }
}

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
    Function buttonAction = (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage3()));};
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
          _createText("소속 대학의 메일 계정을 적어주세요"),
          email,
          start
        ]
      )
    );
  }
}
/* Register Page 3 */
class RegisterPage3 extends StatefulWidget
{
  _RegisterPage3 createState() => new _RegisterPage3();
}

class _RegisterPage3 extends State<RegisterPage3>
{
  bool _isButtonDisabled;

  @override
  void initState()
  {
    _isButtonDisabled = true;
  }

  Widget build (BuildContext context)
  {
    Function buttonAction = (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage4()));};
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
    final password = TextField
    (
      decoration: const InputDecoration(),
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
          _createText("사용할 비밀번호를 입력해주세요."),
          password,
          start
        ]
      )
    );
  }
}
/* Register Page 3 */
class RegisterPage4 extends StatefulWidget
{
  _RegisterPage4 createState() => new _RegisterPage4();
}

class _RegisterPage4 extends State<RegisterPage4>
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
    final row1 = Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children : []
    );
    final name = TextField
    (
      decoration: const InputDecoration(),
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
          _createText("이름을 입력하고 성별을 선택해주세요."),
          name,
          _createText("실명을 정확하게 입력해주세요.", 
            TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey)),
          start
        ]
      )
    );
  }
}