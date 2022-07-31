import 'package:flutter/material.dart';
import 'package:movie_app/home.dart';
class Chat extends StatelessWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context, const Home());
          },
          focusColor:  const Color.fromRGBO(255, 255, 255, 0.053),
          child: const Icon(Icons.arrow_back, color: Colors.blue,),
          enableFeedback: true,
          splashColor: Colors.green,
        ),
        title: const ListTile(
          title: Text('Donuts 🍩'),
        ),
        actions: const <Widget>[
          Icon(
            Icons.settings,
          )
        ],
      ),
      body: Align(
        child: Container(
          alignment: Alignment.bottomCenter,
          child:  ListTile(
            title: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                hintText: 'Write message...',
                hintStyle: TextStyle(
                )

              ),
            ),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.send),
          ),
        ),
      )
      
    );
  }
}