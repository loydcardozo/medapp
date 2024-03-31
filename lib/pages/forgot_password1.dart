import 'package:flutter/material.dart';
import 'package:medapp/pages/verification.dart';

class ForgotPassPage extends StatefulWidget{
  @override
  _ForgotPassPageState createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(40.0)),
              Text('Enter Your Email Account'),
              Padding(padding: EdgeInsets.all(20.0)),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email
                  ),
                  hintText:'email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyPage()));
                }, 
                child: Text('Send')
                )
            ]
          )
        ),
    );
  }
}