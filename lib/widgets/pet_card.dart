import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_zone/constants.dart';
import 'package:pet_zone/model/pet.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  PetCard({this.pet});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 10,
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(170, 10, 10, 10),
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pet.name,
                          overflow: TextOverflow.ellipsis,
                          style: kTitleStyle,
                        ),
                        pet.isMale
                            ? Icon(
                          FontAwesomeIcons.mars,
                          color: kText2Color,
                        )
                            : Icon(
                          FontAwesomeIcons.venus,
                          color: kText2Color,
                        ),
                      ],
                    ),
                    Text(pet.type, style: kSubtitleStyle),
                    Text("${pet.age} years old", style: kSubtitle2Style),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: kPrimaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          pet.distance,
                          style: kSubtitle2Style,
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 14,
            right: 180,
            bottom: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
                child:Image.asset(pet.image,fit: BoxFit.fill, ),
            ),
          ),
        ],
      ),
    );
  }
}