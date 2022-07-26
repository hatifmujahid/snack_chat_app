

import 'package:flutter/material.dart';
import 'package:movie_app/Authentication_service.dart';
import 'package:movie_app/Donuts_chat.dart';
import 'package:movie_app/French_fries.dart';
import 'package:movie_app/signin.dart';
import 'package:provider/provider.dart';
import 'package:movie_app/Donuts_chat.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 142, 0, 90),
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Snack Chat App🍴",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            
            children: <Widget>[
              InkWell(
                child: Donuts(),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => Chat()
                    ),
                    
                  );
                },
              ),
              InkWell(
                child: frenchFries(),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>French_Fries_chat()));
                },
              ),
              Pizza(),
              iceCream(),
              Chocolate()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<AuthenticationService>().SignOut();
        },
        
        child: Icon(Icons.logout,color: Colors.black,),
      ),
    );
  }
}


Widget Donuts(){
  return Container(
    height: 70,
    margin: EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: const Color(0x80000000),
            blurRadius: 12.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 180, 64, 1),
            Color.fromARGB(255, 238, 1, 222)
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
    margin: EdgeInsets.all(10),
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
            Color.fromARGB(255, 247, 247, 40),
            Color.fromARGB(255, 214, 48, 48)
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
Widget Pizza(){
  return Container(
    height: 70,
    margin: EdgeInsets.all(10),
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
            Color.fromARGB(255, 232, 54, 54),
            Color.fromARGB(255, 117, 227, 95)
          ],
        )
      ),
      child: Center(
        child: Text(
          "Pizza 🍕",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
}

Widget Chocolate(){
  return Container(
    height: 70,
    margin: EdgeInsets.all(10),
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
            Color.fromARGB(255, 254, 0, 0),
            Color.fromARGB(255, 100, 42, 0)
          ],
        )
      ),
      child: Center(
        child: Text(
          "Chocolate 🍫",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      
    );
}
Widget iceCream(){
  return Container(
    height: 70,
    margin: EdgeInsets.all(10),
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
            Color.fromARGB(255, 227, 136, 25),
            Color.fromARGB(255, 255, 255, 255)
          ],
        )
      ),
      child: Center(
        child: Text(
          "Ice Cream 🍦",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      
    );
}