import 'package:pet_zone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/model/pet.dart';
import 'package:pet_zone/widgets/pet_card.dart';
class Home extends StatefulWidget {
  //Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('home'),
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
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListView.builder(
                  itemCount: petList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    var pet=petList[index];
                    return PetCard(pet: pet);
                  },
                )

              ],

            )
        ),
        extendBody: true,
      ),
    );
  }
}
