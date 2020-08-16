import 'package:flutter/material.dart';
import 'package:pet_zone/pages/home/home.dart';
import 'package:pet_zone/pages/add.dart';
import 'package:pet_zone/pages/favourite.dart';
import 'package:pet_zone/pages/profile.dart';


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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0), ),
          child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              items:[
                BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icons8-home-page-50.png',color: Colors.grey,height:25,),
                    activeIcon: Image.asset('assets/images/icons8-home-page-50-2.png', color: Colors.pink[300],height:25),
                    title: SizedBox.shrink()
                ),
                BottomNavigationBarItem(
                    icon:Image.asset('assets/images/icons8-quill-with-ink-50.png',color: Colors.grey,height:25),
                    activeIcon: Image.asset('assets/images/icons8-quill-with-ink-50-2.png', color: Colors.purple,height:25),
                    title: SizedBox.shrink()
                ),
                BottomNavigationBarItem(
                    icon:Image.asset('assets/images/icons8-favorite-folder-50.png',color: Colors.grey[700],height:25),
                    activeIcon: Image.asset('assets/images/icons8-favorite-folder-50-2.png', color: Colors.purple,height:25),
                    title: SizedBox.shrink()
                ),
                BottomNavigationBarItem(
                    icon:Image.asset('assets/images/icons8-male-user-50.png',color: Colors.grey,height:25),
                    activeIcon: Image.asset('assets/images/icons8-male-user-50-2.png', color: Colors.purple,height:25),
                    title: SizedBox.shrink()
                ),
              ],
              onTap: _onItemTapped

          ),
        ),
      ),
    );
  }
}
