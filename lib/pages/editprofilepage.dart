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
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.save,
                  size: 30,
                ),
                onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            },
              )
          ],
          title: Text("Edit Profile"),
        ),
        body: SingleChildScrollView(
        child: Column(
     children:[
      Container(
        height:200,
        decoration: BoxDecoration(
          // color: Colors.green,
          image: DecorationImage(
          image: AssetImage('assets/images/empty_profile.jpg',
          ),
        ),
          ),
        ),
        Container(
          child: Column(
            children: [
            TextField(
            decoration: InputDecoration(
              labelText: "First Name"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Last name"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "email"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "password"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "date of birth"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText:"address"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "phone number"
            )
          ),
          TextField(
            decoration: InputDecoration(
              labelText:"health information"
            )
          )
            ]
          ),
        )
     ]
      ) 
        )
      );
  }
}
