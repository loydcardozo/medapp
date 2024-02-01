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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextField(
                decoration: InputDecoration(
                  labelText:'First name',
                )
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last name',
                )
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'date of birth',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'address',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'phone number',
                ),
              ),
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
    );
  }
}