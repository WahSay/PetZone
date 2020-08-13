import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('add'),
        backgroundColor: Colors.purpleAccent[100],
        elevation: 0.0,
      ),
      body: Center(
        child: Text('add'),
      ),
      extendBody: true,

    ),
    );
  }
}