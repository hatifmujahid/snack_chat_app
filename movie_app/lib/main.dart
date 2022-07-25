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
      child: const MaterialApp(
        title: 'Flutter Demo',
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

// class MainBodyHomePage extends StatefulWidget {
//   const MainBodyHomePage({ Key? key }) : super(key: key);

//   @override
//   State<MainBodyHomePage> createState() => _MainBodyHomePageState();
// }

// class _MainBodyHomePageState extends State<MainBodyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      
//       child: Column(
//         children: <Widget>[
//           donuts(),
//         ],
//       ),
//     );
//   }
// }
// Widget donuts(){
//   return Container(
//     height: 70,
//     width: 200,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(100),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x80000000),
//             blurRadius: 12.0,
//             offset: Offset(0.0, 5.0),
//           ),
//         ],
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color.fromARGB(255, 231, 255, 51),
//             Color.fromARGB(255, 125, 74, 32)
//           ],
//         )
//       ),
//       child: Center(
//         child: Text(
//           "Donuts 🍩",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
// }
// Widget frenchFries(){
//   return Container(
//     width: 70,
//     height: 200,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(100), 
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black,
//           blurRadius: 12,
//           offset: Offset(0.0, 5.0)
//         )
//       ],
//       gradient: RadialGradient(
//         colors: [
//             Color.fromARGB(255, 231, 255, 51),
//             Color.fromARGB(255, 204, 153, 255),
//           ],
//       ),
//     ),
//     child: Center(
//         child: Text(
//           "French Fries 🍟",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//   );
// }
 