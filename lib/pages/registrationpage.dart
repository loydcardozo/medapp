import 'package:flutter/material.dart';
import 'package:medapp/pages/loginpage.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController NameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  bool obsecurePass = true;
  bool isSignIn = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Sign up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: NameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    labelText:'username',
                    prefixIcon: Icon(
                      Icons.person
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  )
                ),
            
                Padding(padding: EdgeInsets.all(10),),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    labelText: 'email',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: passwordController,
                  obscureText: obsecurePass,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    prefixIconColor: Colors.black38,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsecurePass = !obsecurePass;
                          });
                        },
                        icon: obsecurePass
                            ? Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.black38
                        ) : Icon(
                            Icons.visibility_outlined,
                            color: Colors.black38
                        )
                    ),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),                
                
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Register',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),),
                  ),
                  // );
                  // }
                
                
                Row(
                  children:[
                    Padding(padding: EdgeInsets.only(right:50)),
                    Text('Already have an account'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Login'),
                    ),
                    
                  ]
                ),  
                Text('or'),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Row(
                            children: [
                              Icon(
                                MdiIcons.google,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('Google',
                                  style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                  width: 1,
                                  color: Colors.black54
                              )
                          )
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('Facebook',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              width: 1,
                              color: Colors.black54,

                            )
                        ),
                      ),
                    )
                  ],
                ),
              ]
          )
        ),
      )
      )
    );
  }
}