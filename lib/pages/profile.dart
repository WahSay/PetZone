import 'package:flutter/material.dart';
import 'package:pet_zone/constants.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:pet_zone/widgets/profile_edit.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Column(
            children: <Widget>[
              Container(
                height: 200,
                //color: Colors.pink,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 50,
                      child: Container(
                        child: Image.asset('assets/images/1092631.jpg',fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      top:60,
                      left: 110,
                      bottom: 0,
                      right: 110,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/download.png'),

                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.person_outline,color: Colors.pink[300],),
                    SizedBox(height: 10),
                    Text('Wah Say Say Thaw',
                      style: kSubtitleStyle
                    ),
                    Divider(height: 30,color: Colors.pink[300],),
                    Icon(Icons.phone_android,color: Colors.pink[300],),
                    SizedBox(height: 10),
                    Text('09961324373',
                        style: kSubtitleStyle
                    ),
                    Divider(height: 30,color: Colors.pink[300],),
                    Icon(Icons.location_on,color: Colors.pink[300],),
                    SizedBox(height: 10),
                    Text('Insein,Yangon',
                        style: kSubtitleStyle
                    ),
                  ],
                ),
              ),
              Divider(height: 30,color: Colors.pink[300],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(40),
                    ),
                    color: Colors.pink[200],
                    padding: EdgeInsets.symmetric(vertical: 13,horizontal: 15),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfile(),
                        ),
                      );
                    },
                    child: Text('Edit Profile',style: kSubtitleStyle,),
                  ),
                  SizedBox(width: 60,),
                  RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(50),
                    ),
                    color: Colors.pink[200],
                    onPressed: () async {
                      await _auth.signOut();
                    },
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    icon: Icon(Icons.exit_to_app,color: Colors.grey[600],),
                    label: Text('Signout',style: kSubtitleStyle,),
                  ),
                ],
              )
            ],
          ),


        ),

      ),
    );
  }
}