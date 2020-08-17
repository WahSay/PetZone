
import 'package:pet_zone/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_zone/model/pet.dart';
import 'package:pet_zone/widgets/pet_card.dart';
import 'package:pet_zone/pages/home/pet_datail.dart';
import 'package:pet_zone/widgets/cate.dart';
class Home extends StatefulWidget {
  //Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('home'),
          backgroundColor: Colors.pink[100],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height:15),
                CategoryList(),

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


