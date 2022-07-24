import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Color(0xFF212121),
              minimumSize: Size(double.infinity, 50),
              padding: EdgeInsets.all(8.0),
              
            ),
          ),
        ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snack Chat App"),
        ),
        body: MainBodyHomePage(),
      ),
    );
  }
}

class MainBodyHomePage extends StatefulWidget {
  const MainBodyHomePage({ Key? key }) : super(key: key);

  @override
  State<MainBodyHomePage> createState() => _MainBodyHomePageState();
}

class _MainBodyHomePageState extends State<MainBodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      width: 500,
      child: Column(
        children: <Widget>[
          Donuts(),
        ],
      ),
    );
  }
}
Widget Donuts(){
  return Container(
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Color(0x80000000),
            blurRadius: 12.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 231, 255, 51),
            Color.fromARGB(255, 204, 153, 255),
          ],
        )
      ),
      child: Center(
        child: Text(
          "Donuts 🍩",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
}

 