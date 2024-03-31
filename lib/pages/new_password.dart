import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';

class NewPassPage extends StatefulWidget{
  @override
  _NewPassPageState createState() => _NewPassPageState();
}

class _NewPassPageState extends State<NewPassPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text('New Password')
          ),
          body: Column(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Text('Enter New Password'),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Text('Old Password'),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                )
              ),
              ElevatedButton(
                onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              }, 
              child: Text('Confirm'),
              )
            ]
            ),
      );
  }
}