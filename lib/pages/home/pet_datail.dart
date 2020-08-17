import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_zone/constants.dart';
import 'package:pet_zone/model/pet.dart';

class PetDetail extends StatelessWidget {
  final Pet pet;
  PetDetail({this.pet});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.pink[50],
                  width: double.infinity,
                  height: 360.0,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 70,
                        child: Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              AppBar(
                               backgroundColor: Colors.grey[100],
                                elevation: 0,
                                leading: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Icon(Icons.arrow_back,
                                      color: kTextColor, size: 30),
                                ),
                                actions: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: kTextColor,
                                    size: 30,
                                  ),
                                  SizedBox(width: 18),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 200,
                                // color: Colors.amber,
                                child: Container(
                                  width: 500,
                                  height: 500,
                                  child: Image.asset(
                                    pet.image,
                                    width: 500,
                                    height: 500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 260,
                        left: 20,
                        right: 20,
                        bottom: 0,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 39,vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      pet.name,
                                      style:
                                      kTitleStyle.copyWith(fontSize: 22.0),
                                    ),
                                    pet.isMale
                                        ? Icon(FontAwesomeIcons.mars,
                                        color: kText2Color)
                                        : Icon(FontAwesomeIcons.venus,
                                        color: kText2Color)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pet.type, style: kSubtitleStyle.copyWith(fontSize: 14)),
                                    Text("${pet.age} years old",
                                        style: kSubtitle2Style),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.pink[50],
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('My Story',style: kTitleStyle.copyWith(fontSize: 18),),
                            Text(pet.datetime, style: kSubtitle2Style.copyWith(fontSize: 13)),

                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(pet.description, style: kSubtitleStyle),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
        extendBody: true,
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 90.0,
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 7.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38),
              topRight: Radius.circular(35),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(pet.userImage),
              radius: 27,
            ),
            title: Text(pet.userName,
                style: kTitleStyle.copyWith(fontSize: 16.0)),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.location_on,size: 12,),
                SizedBox(width: 3,),
                Text(pet.distance,style: kTitleStyle.copyWith(fontSize: 12),),
              ],
            ),
            trailing: Image.asset('assets/images/phone.png',height: 40,color: Colors.pink[200],),
          )

        ),
      ),
    );
  }
}
