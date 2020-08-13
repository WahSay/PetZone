import 'package:pet_zone/pages/add.dart';
import 'package:pet_zone/pages/favourite.dart';
import 'package:pet_zone/pages/profile.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/constants.dart';

class Home extends StatefulWidget {
  //Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //int _selectedIndex=0;

  final AuthService _auth = AuthService();

//  static const List<Widget> _widgetOptions = <Widget>[
//    Index 0: Home(),
//    Index 1: Add(),
//    Index 2: Favourite(),
//    Index 3: Profile()
//  ];

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }


//  final tabs=[
//    Home(),
//    Add(),
//    Favourite(),
//    Profile(),
//  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.purpleAccent[100],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Center(
          child: Text('home'),
        ),
          extendBody: true,

      ),
    );
  }
}