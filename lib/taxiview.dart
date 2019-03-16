import 'package:flutter/material.dart';
import 'package:spaceconquer/taxipage.dart';
import 'package:spaceconquer/chatpage.dart';
import 'package:spaceconquer/settingpage.dart';

class TaxiView extends StatefulWidget {
  @protected
  _TaxiViewState createState() => _TaxiViewState();
}

class _TaxiViewState extends State<TaxiView> {
  //final _suggestions = <Container>[];
  int length=0;
  //final _biggerFont = const TextStyle(fontSize: 18.0);
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState((){
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    new TaxiPage(),
    new ChatPage(),
    new SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //title: new Text('대학택시'),
        title: new Center(
          child: new Image.asset('assets/images/iconlong.png', fit: BoxFit.fitWidth)
        ),
        backgroundColor: const Color(0xff52abff),
        ),

      body : _children[_currentIndex],

      bottomNavigationBar: new BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.drive_eta),
            title: new Text('taxi'),
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.question_answer),
            title: new Text('chat'),
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            title: new Text('setting'),
          )
        ]
      ),
    );
  }
}






/*
void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.startend)));
}*/





/*
  Widget listViewBuild2() {
    return new ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, i) => _buildRow(),
      itemCount: length,
    );
  }

  Widget _buildRow() {
    return new ListTile(
      title: information()
    );
  }

  Widget information() {
    return new Row(
      children: <Widget>[
        new Container(
          child: Align(
            alignment: Alignment.topLeft,
            child:
              new Image.asset(
              'images/profilesample.png',
              width: 10.0, 
              height: 10.0,
            )
          )
        ),
        
      ],
    );
  }

  */
  /*
  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(pair.asPascalCase, style: _biggerFont),
    );
  }*/
  /*
  Widget listViewBuild1() {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child:
                    new Image.asset(
                    'images/profilesample.png',
                    width: 10.0, 
                    height: 10.0,
                  )
                )
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                  "2/17 Sun / 18:00 - 18:30",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
                  ),

                  new Text(
                  "대전역 -> 카이",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w100,
                    fontFamily: "Roboto")
                  ),

                  new Text(
                  "1",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
                  )
                ]
              ),

              new RaisedButton(key:null, onPressed:buttonPressed,
                color: const Color(0xFF0099ed),
                child:
                  new Text(
                  "BUTTON 3",
                    style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFFffffff),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
                  )
                )
              ]
          ),   


          new Container(
            child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/profilesample.png',
                    width: 100.0, 
                    height: 100.0,
                    )
                ]

              ),

          ),

          new Container(
            child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/profilesample.png',
                    width: 100.0, 
                    height: 100.0,
                    )
                ]

              ),

          ),

          new Container(
            child:
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/profilesample.png',
                    width: 100.0, 
                    height: 100.0,
                    )
                ]

              ),

          )
        ] 
    );
  }

  void buttonPressed(){}
  */



