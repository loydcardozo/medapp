import 'package:flutter/material.dart';
import 'package:medapp/pages/forgot_password1.dart';
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
        body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding:EdgeInsets.all(10)),
              Image.asset('assets/images/login.jpg'),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                      Icons.email,
                    ),
                  labelText: "Email",
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.password,
                  ),
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
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
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                ),
                child: Text('Forgot Password'),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassPage()));
                },
              )
            ]
            )
      ),
      )
    );
  } 
}