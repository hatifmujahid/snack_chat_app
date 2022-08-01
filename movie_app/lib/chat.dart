import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:movie_app/home.dart';
import 'package:movie_app/messages.dart';

class Message {
  final DateTime Date;
  final String name;
  final bool isSentbyMe;
  final String text;

  const Message(
      {required this.Date,
      required this.isSentbyMe,
      required this.name,
      required this.text});
}

class Chat extends StatelessWidget {
  Chat({Key? key}) : super(key: key);
  final myController = TextEditingController();
  List<Message> messages = [
    Message(
        Date: DateTime.now().subtract(Duration(days: 1, minutes: 2)),
        isSentbyMe: true,
        name: 'Hatif',
        text: "Hello Everyone!"),
    Message(
      Date: DateTime.now().subtract(Duration(days: 1, minutes: 4)),
      isSentbyMe: false,
      name: "Ali",
      text: "Yo! 👋",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: false,
      name: "Aisha",
      text: "Welcome to the chat!",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: false,
      name: "Ash",
      text: "Hope you like Donuts!",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: true,
      name: "Hatif",
      text: "I love Donuts!",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: false,
      name: "Aisha",
      text: "Oh, from where exactly?",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: true,
      name: "Hatif",
      text: "Dunkin Donuts is my favorite",
    ),
    Message(
      Date: DateTime.now(),
      isSentbyMe: true,
      name: "Hatif",
      text: "🍩",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 138, 241),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context, const Home());
            },
            focusColor: const Color.fromRGBO(255, 255, 255, 0.053),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            enableFeedback: true,
            splashColor: Colors.green,
          ),
          title: const ListTile(
            title: Text(
              'Donuts 🍩',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            textColor: Colors.white,
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.call,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.video_call,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                elements: messages,
                groupBy: (message) => DateTime(
                    message.Date.year, message.Date.month, message.Date.day),
                groupHeaderBuilder: (Message message) => SizedBox(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.all(8),
                        color: Colors.black,
                        child: Text(
                          '${fromDatetoString(message.Date.month)} ${message.Date.day.toString()},${message.Date.year.toString()}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 17,),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentbyMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    elevation: 8,
                    color:
                        message.isSentbyMe ? Colors.blueAccent : Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Text(
                            message.name,
                            style: TextStyle(fontSize: 9,color:message.isSentbyMe?Colors.black:Colors.grey),
                          ),
                          Text(message.text),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              //bottom text stuff
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 32,
                          offset: Offset(0, 4),
                          color: Color.fromARGB(255, 8, 40, 121)
                              .withOpacity(0.08)),
                    ]),
                height: 60,
                width: 2000,
                child: ListTile(
                  title: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Write message...',
                        hintStyle: TextStyle()),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add),
                  ),
                  trailing: ElevatedButton(
                    onPressed: (() {
                      // final smth = Message(
                      //     Date: DateTime.now(),
                      //     isSentbyMe: true,
                      //     name: 'Hatif',
                      //     text: myController.text);
                      // setState(() => messages.add(smth));
                    }),
                    child: Icon(Icons.send),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void setState(Function() param0) {}
}

String fromDatetoString(int date) {
  if (date == 1) {
    return 'Jan';
  }
  if (date == 2) {
    return 'Feb';
  }
  if (date == 3) {
    return 'Mar';
  }
  if (date == 4) {
    return 'Apr';
  }
  if (date == 5) {
    return 'May';
  }
  if (date == 6) {
    return 'Jun';
  }
  if (date == 7) {
    return 'Jul';
  }
  if (date == 8) {
    return 'Aug';
  }
  if (date == 9) {
    return 'Sep';
  }
  if (date == 10) {
    return 'Oct';
  }
  if (date == 11) {
    return 'Nov';
  }
  if (date == 12) {
    return 'Dec';
  }
  return 'NULL';
}
