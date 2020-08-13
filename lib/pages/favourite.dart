import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('fav'),
          backgroundColor: Colors.purpleAccent[100],
          elevation: 0.0,
        ),
        body: Center(
          child: Text('fav'),
        ),
        extendBody: true,

      ),
    );
  }
}