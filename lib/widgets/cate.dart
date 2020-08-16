import 'package:flutter/material.dart';
import 'package:pet_zone/model/category.dart';
import 'package:pet_zone/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context,index){
          var category=categoryList[index];
          return GestureDetector(
            onTap:  () => _onSelected(index),
            child: Container(
              width:  90.0,
              child: Column(
                children: [
                  Card(
                    color: _selectedIndex != null && _selectedIndex == index
                        ? Colors.pink[100]
                        : Colors.white,
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
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(category.name, style: kSubtitleStyle,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}