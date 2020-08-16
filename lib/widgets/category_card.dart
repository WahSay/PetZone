import 'package:flutter/material.dart';
import 'package:pet_zone/constants.dart';
import 'package:pet_zone/model/category.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  90.0,
      child: Column(
        children: [
          Card(
            elevation: 13,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: SizedBox(
              width: 65.0,
              height: 65.0,
              child: Center(
                child: Image.asset(
                  category.icon,
                  width: 35.0,
                  height: 35.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 4,),
          Text(category.name, style: kSubtitleStyle,)
        ],
      ),
    );
  }
}
