import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText:'First name',
                )
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last name',
                )
              ),
              Padding(padding: EdgeInsets.all(20),),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'date of birth',
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'address',
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'phone number',
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'health information',
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }, child: Text('Register'))
            ]
        )
      )
      )
    );
  }
}