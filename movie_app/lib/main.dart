import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Authentication_service.dart';
import 'package:movie_app/home.dart';
import 'package:movie_app/signin.dart';
import 'package:provider/provider.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(loginApp());
}

class loginApp extends StatelessWidget {
  const loginApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),

        StreamProvider<User?>.value(
          
          value: FirebaseAuth.instance.userChanges(),
          initialData: null,
        ),
        
      ],
      child:  MaterialApp(
        title: 'Flutter Demo',
        
        theme: ThemeData(
          
          brightness: Brightness.dark
        ),
        debugShowCheckedModeBanner: false,
        home: AuthenticationWrapper(),
      ),
      
    );
  }
}
class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if(firebaseUser!= null){
      return Home();
    }
    return Signin();
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// Future<void> main(List<String> args) async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); //not start app before Firebase starts 
//   runApp(const ChatApp());
// }
// class ChatApp extends StatelessWidget {
//   const ChatApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         brightness: Brightness.dark,
        
//         ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Snack Chat App"),
//         ),
//         body: MainBodyHomePage(),
//       ),
//     );
//   }
// }


 