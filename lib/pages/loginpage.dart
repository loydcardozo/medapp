import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/registrationpage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'login2Page.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:medapp/api/loginModel.dart';
// import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecurePass = true;
  // bool disabled = true;
  // function() onPressed;

  bool _isEmailValid = true;


  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
      child: Form(
              key: _formKey,
              child: Padding(
              padding:EdgeInsets.all(20),
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Align(
                        alignment: Alignment.centerRight,
                      child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                            builder: (context) => RegisterPage()
                            )
                          );
                        },
                      child: Text('Sign In',
                        style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20
                              )
                            )
                          ),
                        ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                        padding: EdgeInsets.only(top: 70, bottom: 50),
                        child: Text('Log in',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      )
                    ),
                  ),
                ),

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.greenAccent,
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                        return null;
                      },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                                Icons.email,
                              ),
                  prefixIconColor: Colors.black38,
                  hintText: "Email address",
                  labelText: 'Email',
                  // errorText: _isEmailValid ? null : 'Please enter a valid email',
                  border: UnderlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(10.0)),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: Colors.greenAccent,
                    obscureText: obsecurePass,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                        return null;
                      },
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: 'password',
                    filled: true,
                    fillColor: Colors.white,
                    // errorText: _isEmailValid ? null : 'Please enter a valid email',
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

                       GestureDetector(
                        onTap: () {
    if (_isEmailValid) {
      String enteredEmail = emailController.text;
      String enteredPassword = passwordController.text;
      print('Email: $enteredEmail, Password: $enteredPassword');}

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                         child: Container(
                          height: 50,
                          // onPressed: disable ? null : onPressed,
                          decoration: BoxDecoration(
                              // color: Colors.green[300],
                            color: Colors.black54,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text('Login',
                            style: TextStyle(
                              color: Colors.white
                            )
                          ),
                          ),
                                               ),
                       ),
                       
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.black54
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 5, right:5),
                        child: Text('or login with social account')),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.black54
                      ),
                    )
                  ],
                ),

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

                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage2()));
                        }, child: Text("login design"))
              ]
              )
                ),
        ),
      )
    );
  }
}