import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();
  
  Future<void> SignOut() async{
    await _firebaseAuth.signOut();
  }
  Future<String> signIn({String? email, String? password}) async {
    try {
     await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
     return "Signed In"; 
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  Future<String> signUp({ email: null, password:null}) async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return "user Created";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}