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
            Padding(padding: EdgeInsets.all(10)),
            TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "First Name",
              prefixIcon: Icon(
                Icons.person
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "Last name",
              prefixIcon: Icon(
                Icons.person
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "email",
              prefixIcon: Icon(
                Icons.email
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText: "password",
              prefixIcon: Icon(
                Icons.password
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText: "date of birth",
              prefixIcon: Icon(
                Icons.cake
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText:"address",
              prefixIcon: Icon(
                Icons.location_on
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              labelText: "phone number",
              prefixIcon: Icon(
                Icons.phone
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
            )
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            readOnly:true,
            decoration: InputDecoration(
              labelText:"health information",
              prefixIcon: Icon(
                Icons.health_and_safety
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
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