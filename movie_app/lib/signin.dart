import 'package:flutter/material.dart';
import 'package:movie_app/Authentication_service.dart';
import 'package:provider/provider.dart';

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text('SignIn 🔐'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "\nWelcome\n",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter your email address to sign in.\nEnjoy the conversation!\n",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email, color: Color.fromARGB(255, 77, 105, 78),),
                  
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password', 
                  icon: Icon(Icons.key,color: Color.fromARGB(255, 77, 105, 78),)
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),
              );
            }, backgroundColor: Colors.blue,
            child: Icon(Icons.login_outlined, color: Colors.black,)
          ),
    );
  }
}
