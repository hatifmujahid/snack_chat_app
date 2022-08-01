import 'package:flutter/material.dart';
class Messages {
  final DateTime Date;
  final String name;
  final bool isSentbyMe;
  final String text;

  const Messages(
      {required this.Date,
      required this.isSentbyMe,
      required this.name,
      required this.text});
}
class message extends StatefulWidget {
  const message({ Key? key }) : super(key: key);

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
List<Messages> chats = [
    Messages(
        Date: DateTime.now(),
        isSentbyMe: true,
        name: 'Hatif',
        text: "Hello Everyone!"),
    Messages(
      Date: DateTime.now(),
      isSentbyMe: false,
      name: "Ali",
      text: "Yo! 👋",
    ),
    Messages(
      Date: DateTime.now(),
      isSentbyMe: false,
      name: "Aisha",
      text: "Welcome to the chat!\n Hope you like Donuts",
    ),
    Messages(
      Date: DateTime.now(),
      isSentbyMe: true,
      name: "Hatif",
      text: "I love Donuts!",
    ),
    Messages(
      Date: DateTime.now(),
      isSentbyMe: true,
      name: "Hatif",
      text: "🍩",
    ),
],