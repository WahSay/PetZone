import 'package:flutter/material.dart';
import 'package:pet_zone/pages/authenticate/Login/components/background.dart';
import 'package:pet_zone/pages/authenticate/Signup/signup_screen.dart';
import 'package:pet_zone/components/already_have_an_account_acheck.dart';
import 'package:pet_zone/components/rounded_button.dart';
import 'package:pet_zone/components/rounded_input_field.dart';
import 'package:pet_zone/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:pet_zone/main.dart';

class Body extends StatefulWidget {
   const Body({
    Key key,
  }) : super(key: key);


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
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: 4),
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
                style: TextStyle(color: Colors.red,fontSize:12),
              ),
              SizedBox(height: 8),
              RoundedButton(
                text: "LOGIN",
                press: () async{
                  if(_formKey.currentState.validate()) {
                    dynamic result=await _auth.loginWithEmailAndPassword(email, password);
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                    if(result==null){
                      setState(() {
                        error='Could not login with those credentials';
                      });
                    }

                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (BuildContext context) => SignUpScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
