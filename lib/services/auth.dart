import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;

  //auth change user stream *NOT WITH custom user*
  Stream<FirebaseUser> get user{
    return _auth.onAuthStateChanged;
  }

  //register with email and pw
  Future registerWithEmailAndPassword(String email,String password)async{
    try{
      AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user=result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //login with email and pw
  Future loginWithEmailAndPassword(String email,String password)async{
    try{
      AuthResult result=await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user=result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  //signout
  Future signOut() async{
    try {
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
  }

}