import 'package:flutter/material.dart';
import 'package:medapp/pages/loginpage.dart';
import 'package:medapp/pages/registrationpage.dart';

class StartPage extends StatelessWidget{
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/login.jpg'),
            Text('Hello!'),
            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, 
            child: Text('login')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text('register')
              )
          ]
          ),
      ),
    );
  }
}