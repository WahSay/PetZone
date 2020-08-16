import 'package:pet_zone/model/category.dart';
import 'package:pet_zone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/model/pet.dart';
import 'package:pet_zone/widgets/pet_card.dart';
import 'package:pet_zone/widgets/category_card.dart';
import 'package:pet_zone/pages/home/pet_datail.dart';
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
          backgroundColor: Colors.pink[100],
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
                SizedBox(height:15),
                Container(
                  width: double.infinity,
                  height: 120.0,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      var category=categoryList[index];
                      return CategoryCard(category:category);
                    },
                  ),
                ),

                ListView.builder(
                  itemCount: petList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    var pet=petList[index];
                    return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PetDetail(pet: pet),
                            ),
                          );
                        },
                        child: PetCard(pet: pet));
                  },
                ),


              ],

            )
        ),
        extendBody: true,
      ),
    );
  }
}
