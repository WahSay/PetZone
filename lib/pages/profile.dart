import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('profile'),
          backgroundColor: Colors.purpleAccent[100],
          elevation: 0.0,
        ),
        body: Center(
          child: Text('profile'),
        ),
        extendBody: true,

      ),
    );
  }
}