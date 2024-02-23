import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/loginpage.dart';

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
              Image.asset('assets/images/login.png'),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText:'First name',
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
                decoration: InputDecoration(
                  labelText: 'Last name',
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                )
              ),
              Padding(padding: EdgeInsets.all(10),),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.password,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'date of birth',
                  prefixIcon: Icon(
                    Icons.cake
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'address',
                  prefixIcon: Icon(
                    Icons.location_on,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'phone number',
                  prefixIcon: Icon(
                    Icons.phone
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'health information',
                  prefixIcon: Icon(
                    Icons.health_and_safety
                  ),
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton(
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }, child: Text('Register')),
              Row(
                children:[
                  Padding(padding: EdgeInsets.only(right:50)),
                  Text('Already have an account'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Login'),
                  )
                ]
              )
              
            ]
        )
      )
      )
    );
  }
}