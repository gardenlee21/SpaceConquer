import 'package:flutter/material.dart';

List<Message> chatPageMessages = [
  Message(number:0, message:'hi'),
  Message(number:1, message:'hello'),
  Message(number:0, message:'when did you'),
  Message(number:0, message:'take taxi?'),
  Message(number:1, message:'umm...'),
  Message(number:1, message:'17:00')
];

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ChatPage();
  }
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>
        [
          new Expanded
          (
            child: new ListView.builder
            (
              itemCount: chatPageMessages.length,
              itemBuilder:(context, index) {
                if (chatPageMessages[index].number == 0) 
                {
                  return ListTile
                  (
                    title: Text('${chatPageMessages[index].message}'),
                    leading: new CircleAvatar
                    (
                      backgroundColor: Colors.orange,
                      //child: Text('${taxiPageContacts[index].startend.substring(0,1)}'),
                    ),
                    onTap: null
                  );
                }
                else if (chatPageMessages[index].number == 1) 
                {
                  return ListTile
                  (
                    title: Text('${chatPageMessages[index].message}'),
                    leading: new CircleAvatar
                    (
                      backgroundColor: Colors.purple,
                      //child: Text('${taxiPageContacts[index].startend.substring(0,1)}'),
                    ),
                    onTap: null
                  );
                }
              }
            )
          )
        ],
      )
    );
  }
}

class Message {
  final int number;
  final String message;

  const Message({this.number, this.message});
}