import 'package:flutter/material.dart';
import 'package:pet_zone/constants.dart';
import 'package:pet_zone/model/pet.dart';
import 'dart:ui';

class EditProfile extends StatefulWidget {
  const EditProfile({
    Key key,
  }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Column buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Username",
              style: TextStyle(color: Colors.pink[300]),
            )),
        TextField(
          //controller: NameController,
          decoration: InputDecoration(
            hintText: "Update User Name",
            //errorText: _NameValid ? null : "Display Name too short",
          ),
        )
      ],
    );
  }

  Column buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            "Phone Number",
            style: TextStyle(color: Colors.pink[300]),
          ),
        ),
        TextField(
          //controller: PhoneController,
          decoration: InputDecoration(
            hintText: "Update Number",
            //errorText: _PhoneValid ? null : "no too long",
          ),
        )
      ],
    );
  }
  Column buildAddressField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Address",
              style: TextStyle(color: Colors.pink[300]),
            )),
        TextField(
          //controller: AddressController,
          decoration: InputDecoration(
            hintText: "Update Address",
            //errorText: _AddressValid ? null : "Display Name too short",
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    var profile=petList[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text('Edit Profile',style: kTitleStyle.copyWith(color: Colors.grey[600]),) ,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.clear,
              color: Colors.pinkAccent, size: 30),
        ),
        actions: <Widget>[
          Icon(
            Icons.check,
            color: Colors.pinkAccent,
            size: 30,
          ),
          SizedBox(width: 20),
        ],
        elevation: 3,

      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    bottom: 8.0,
                  ),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(profile.userImage),
                  ),
                ),
                Text('Change Photo',style: TextStyle(color: Colors.blueAccent),),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      buildNameField(),
                      buildPhoneField(),
                      buildAddressField(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
