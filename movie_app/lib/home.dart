import 'package:flutter/material.dart';
import 'package:movie_app/Authentication_service.dart';
import 'package:movie_app/signin.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Snack Chat App",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Times New Roman'),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            
            children: <Widget>[
              
              donuts(),
              Divider(color: Colors.grey),
              frenchFries()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<AuthenticationService>().SignOut();
        },
        
        child: Icon(Icons.logout),
      ),
    );
  }
}


Widget donuts(){
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
            Color.fromARGB(255, 66, 20, 1),
            Color.fromARGB(255, 125, 74, 32)
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
Widget frenchFries(){
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
            Color.fromARGB(255, 245, 245, 3),
            Color.fromARGB(255, 190, 12, 12)
          ],
        )
      ),
      child: Center(
        child: Text(
          "French Fries 🍟",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
}