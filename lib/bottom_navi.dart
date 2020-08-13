import 'package:flutter/material.dart';
import 'package:pet_zone/pages/home/home.dart';
import 'package:pet_zone/pages/add.dart';
import 'package:pet_zone/pages/favourite.dart';
import 'package:pet_zone/pages/profile.dart';
import 'package:pet_zone/constants.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex=0;
  final List<Widget> _children=[
    Home(),
    Add(),
    Favourite(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: ClipRRect(

        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
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
            onTap: _onItemTapped

        ),
      ),
    );
  }
}
