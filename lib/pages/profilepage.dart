import 'package:flutter/material.dart';
import 'package:medapp/pages/editprofilepage.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Icon(
          Icons.menu,
          size: 30,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
            },
          )
        ],
        title: Text("Profile"),
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
            Padding(padding: EdgeInsets.all(20)),
            TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "First Name",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "Last name",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "email",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText: "password",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText: "date of birth",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText:"address",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "phone number",
              border: OutlineInputBorder(),
            )
          ),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText:"health information",
              border: OutlineInputBorder(),
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