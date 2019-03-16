import 'package:flutter/material.dart';

List<Contact> taxiPageContacts = [
  Contact(startend: '대전역->카이', time: '07:00'),
  Contact(startend: '카이->대전역', time: '21:00'),
  Contact(startend: '복합->카이', time: '13:00'),
  Contact(startend: '카이->유성고속', time: '11:00'),
  Contact(startend: '카이->대전역', time: '15:00'),
  Contact(startend: '카이->대전역', time: '03:00'),
  Contact(startend: '카이->대전역', time: '20:00'),
  Contact(startend: '카이->대전역', time: '01:00')
];

class TaxiPage extends StatefulWidget {
  @override State<StatefulWidget> createState() {
    return new _TaxiPage();
  }
}

class _TaxiPage extends State<TaxiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Expanded(
            flex: 3,
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget> [
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "from 학교"
                          )
                        ),
                        flex: 4
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "to 학교"
                          )
                        ),
                        flex: 4
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "기타"
                          )
                        ),
                        flex: 2
                      ),
                    ]
                  ),

                  new Row(
                    children: <Widget> [
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "오늘"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "화"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "수"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "목"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "금"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "토"
                          )
                        ),
                        flex: 1
                      ),
                      
                    ]
                  ),
                  new Row(
                    children: <Widget> [
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "4"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "5"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "6"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "7"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "8"
                          )
                        ),
                        flex: 1
                      ),
                      new Expanded(
                        child: 
                        new RaisedButton(key:null, onPressed:button1Pressed,
                          color: const Color(0xffD3D3D3),
                          child: new Text(
                            "9"
                          )
                        ),
                        flex: 1
                      ),
                      
                    ]
                  )
                  
                ],
                
              )
            )
          ),
          new Expanded(
            flex: 7,
            child: new ListView.builder(
              itemCount: taxiPageContacts.length,
              itemBuilder:(context, index) {
                return ListTile(
                  //title: Text('${taxiPageContacts[index].startend}'),
                  leading: new Text('🚅',
                    style: new TextStyle(
                      fontSize: 40.0
                    )),
                  onTap: null,
                  title: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: Text('${taxiPageContacts[index].startend}')
                      ),
                      new RaisedButton(key:null, onPressed:button1Pressed,
                        color: Colors.white,
                        child: new Text('같이 타요!'))
                    ],
                  ),
                  subtitle: Text('${taxiPageContacts[index].time}'),
                );
              }
            )
          )
        ],
      )
    );
  }

  void button1Pressed() {
    
    taxiPageContacts.sort((a,b) => big(int.parse(a.time.substring(0,2)),int.parse(b.time.substring(0,2))));
  }

  int big(a, b) {
    if (a < b) return -1;
    return 0;
  }


}

class Contact {
  final String startend;
  final String time;

  const Contact({this.startend, this.time});
}