import 'package:flutter/material.dart';

List<Contact> taxiPageContacts = [
  Contact(startend: '대전역->카이', time: '07:00'),
  Contact(startend: '카이->대전역', time: '21:00'),
  Contact(startend: '복합->카이', time: '13:00'),
  Contact(startend: '카이->유성고속', time: '11:00'),
  Contact(startend: '카이->대전역', time: '15:00'),
  Contact(startend: '카이->대전역', time: '03:00'),
  Contact(startend: '카이->대전역', time: '20:00'),
  Contact(startend: '카이->대전역', time: '01:00'),
  Contact(startend: '대전역->카이', time: '21:30')
];

class TaxiPage extends StatefulWidget 
{
  _TaxiPage createState() => new _TaxiPage();
}

class _TaxiPage extends State<TaxiPage> 
{
  var today = new DateTime.now();
  List<String> weekDay = ["일", "월", "화", "수", "목", "금", "토", "오늘"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children:
        [
          new Container(
            child: new Column(
              children: 
              [
                new Row(
                  children:
                  [
                    _createERB("from 학교", button1Pressed, 4),
                    _createERB("to 학교", button1Pressed, 4),
                    _createERB("기타", button1Pressed, 2)
                  ]
                ),
                new Row(
                  children:
                  [
                    _createERB("${weekDay[7]}\n${today.day}", button1Pressed,1),
                    _createERB("${weekDay[(today.weekday+1)%7]}\n${today.day+1}", button1Pressed,1),
                    _createERB("${weekDay[(today.weekday+2)%7]}\n${today.day+2}", button1Pressed,1),
                    _createERB("${weekDay[(today.weekday+3)%7]}\n${today.day+3}", button1Pressed,1),
                    _createERB("${weekDay[(today.weekday+4)%7]}\n${today.day+4}", button1Pressed,1),
                    _createERB("${weekDay[(today.weekday+5)%7]}\n${today.day+5}", button1Pressed,1)
                  ]
                )
              ], 
          )
        ),

        new Expanded(
          flex: 7,
          child: new ListView.builder(
            itemCount: taxiPageContacts.length,
            itemBuilder:(context, index) {
              return new ListTile(
                //title: Text('${taxiPageContacts[index].startend}'),
                leading: new Text
                (
                  '🚅',
                  style: new TextStyle( fontSize: 40.0 )
                ),
                onTap: null,
                title: new Row(
                  children:
                  [
                    new Expanded(
                      child: Text('${taxiPageContacts[index].startend}')
                    ),
                    new RaisedButton
                    (
                      key:null, 
                      onPressed:button1Pressed,
                      color: Colors.white,
                      child: new Text('같이 타요!')
                    )
                  ],
                ),
                subtitle: Text('${taxiPageContacts[index].time}'),
              );
              }
            )
        )
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add)
      ),
    );
  }

  void button1Pressed() 
  {
    taxiPageContacts.sort((a,b) => int.parse(a.time.substring(0,2)).compareTo(int.parse(b.time.substring(0,2))));
    setState(() {});
  }

  Widget _createERB(String text, Function onPressed, int flex) => Expanded
  (
    child: RaisedButton
      (
        key:null, 
        onPressed:onPressed,
        color:const Color(0xffD3D3D3),
        child:new Text(text)
      ),
    flex: flex
  );
 
}

class Contact 
{
  /* DB에서 방key1 */
  final String startend; //출발지
  final String time; //출발시각 아마도 숫자 받는 게 좋을듯.

  const Contact({this.startend, this.time});
}