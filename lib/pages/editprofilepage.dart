import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget{
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}
  class _EditProfilePageState extends State<EditProfilePage>{
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
        ),
        body: Center(
          child: Text("Edit Profile"),
        ),
      );
  }
}
