import 'package:pet_zone/pages/add.dart';
import 'package:pet_zone/pages/favourite.dart';
import 'package:pet_zone/pages/profile.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/constants.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;

  final AuthService _auth = AuthService();

  final tabs=[
    Home(),
    Add(),
    Favourite(),
    Profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
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
        body: tabs[_currentIndex],
          extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.purple,
            unselectedItemColor: kPrimaryColor,
            iconSize: 30,
            items:[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                  title: SizedBox.shrink()
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                  title: SizedBox.shrink()
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                  title: SizedBox.shrink()
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                  title: SizedBox.shrink()
              ),
            ],
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            },

          ),
        ),
      ),
    );
  }
}