import 'package:flutter/material.dart';
import 'package:pet_zone/pages/authenticate/Login/login_screen.dart';
import 'package:pet_zone/pages/authenticate/Signup/components/background.dart';
import 'package:pet_zone/components/already_have_an_account_acheck.dart';
import 'package:pet_zone/components/rounded_button.dart';
import 'package:pet_zone/components/rounded_input_field.dart';
import 'package:pet_zone/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:pet_zone/main.dart';

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final AuthService _auth=AuthService();

  final _formKey=GlobalKey<FormState>();

  String email='';
  String password='';
  String error='';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height:6),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (val) {
                  setState(()=>email=val);
                },
              ),
              SizedBox(height: 8),

              RoundedPasswordField(
                onChanged: (val) {
                  setState(()=>password=val);
                },
              ),

              Text(
                error,
                style: TextStyle(color: Colors.red,fontSize:14),
              ),
              SizedBox(height: 10),
              RoundedButton(
                text: "SIGNUP",
                press: () async{
                  if(_formKey.currentState.validate()) {
                    dynamic result=await _auth.registerWithEmailAndPassword(email, password);
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                    if(result==null){
                      setState(() {
                        error='please supply valid email';
                      });
                    }
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),

              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
