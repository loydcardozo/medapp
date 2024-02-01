import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/registrationpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text("Login"),
        ),
        body: Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ElevatedButton(
                child: Text("Register"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                }
              )
            ]
            )
      )
    );
  } 
}