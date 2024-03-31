import 'package:flutter/material.dart';
import 'package:medapp/pages/profilepage.dart';

class EditProfilePage extends StatefulWidget{
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}
  class _EditProfilePageState extends State<EditProfilePage>{
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.save,
                  size: 30,
                ),
                onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
              )
          ],
          title: Text("Edit Profile"),
        ),
        body: SingleChildScrollView(
        child: Column(
     children:[

     ]
      ) 
        )
      );
  }
}
