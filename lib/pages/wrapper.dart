import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/bottom_navi.dart';
import 'package:pet_zone/pages/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:pet_zone/pages/home/home.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user= Provider.of<FirebaseUser>(context);

    if(user==null) {
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}
