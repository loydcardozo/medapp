import 'package:flutter/material.dart';
import 'package:medapp/pages/new_password.dart';

class VerifyPage extends StatefulWidget{
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verfication'),
      ),
      body: Column(
        children: [
          Text('enter verification code'),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassPage()));
          }, child: Text('Send'))
        ],
      ),
      );
  }
}