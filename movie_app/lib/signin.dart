import 'package:flutter/material.dart';
import 'package:movie_app/Authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('SignIn 🔐'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: Card(
                  elevation: 8,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 5, 255, 13))),
                        hintText: 'Email',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  elevation: 8,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      focusColor: Colors.black,
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 5, 255, 13))),
                    ),
                  ),
                ),
              ),
              Container(
                
                height: 370,
                width: 510,
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: Row(
                  children: <Widget>[
                    Image.network('https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',height: 40,),
                    Text('|',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w900)),
                    Text('Developed By Hatif Mujahid',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<AuthenticationService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
          },
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.login_outlined,
            color: Colors.black,
          )),
    );
  }
}
