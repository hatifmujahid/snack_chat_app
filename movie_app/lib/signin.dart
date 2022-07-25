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
        title: Text('SignIn'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(

              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password',hintText: 'Enter Password'),
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
