import 'package:flutter/material.dart';
import 'package:medapp/pages/forgot_password1.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/registrationpage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:medapp/api/loginModel.dart';
import 'package:medapp/providers/dio_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // bool _isEmailValid = true;
  
  void login(String email , password) async {
    
    try{
      
var response = await http.post(Uri.parse("http://127.0.0.1:8000/api/login"),);

      if(response.statusCode == 200){
        
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[400],
        // appBar: AppBar(
        // title: Text('Login',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontWeight: FontWeight.bold
        //   )
        // ),
        // ),
        body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding:EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('assets/images/login.jpg'),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
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
                  // keyboardType: TextInputType.emailAddress,
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
                    hintText: "Email",
                    // errorText: _isEmailValid ? null : 'Please enter a valid email',
                    border: OutlineInputBorder(
                       // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    // errorText: _isEmailValid ? null : 'Please enter a valid email',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    border: OutlineInputBorder(
                       // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                    ),
                    child: Text('Forgot Password',
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassPage()));
                    },
                  ),
                ),
                Consumer(
                  builder: (context, auth, child) {
                    return GestureDetector(
                      onTap: () async {
                        login(emailController.text.toString(), passwordController.text.toString());
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')),
                          );
                          //   if (_isEmailValid) {
                          //   String enteredPassword = passwordController.text;
                          //   print('Email: $enteredEmail, Password: $enteredPassword');
                          final token = await DioProvider().getToken(emailController.text, passwordController.text);

                          // if (token) {
                          //   auth.loginSuccess();
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          // }

                          if (token != null) {
                            // auth.loginSuccess();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          } else {
                            print('Token is null. Please log in again.');
                            Navigator.pushReplacementNamed(context, '/login');
                          }

                        }
                        // },
                        // String enteredEmail = emailController.text.trim();
                        // bool isValidEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(enteredEmail);
                        // setState(() {
                        // _isEmailValid = isValidEmail;
                      },
                      child: Container(
                        height: 50,
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
                    );
                  },

                ),
            // )
            // )
                // ),

                // ElevatedButton(
                //   child: Text("Login"),
                //   onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                //   },
                // ),
                // Row(
                //   children: [
                //     Padding(padding: EdgeInsets.only(left: 50)),
                //     Text("don't have an account"),
                //     TextButton(
                //       style: TextButton.styleFrom(
                //     foregroundColor: Colors.blue,
                //   ),
                //   child: Text("Sign in"),
                //   onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                //   }
                // ),
                //   ]
                // ),
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
                // ElevatedButton.icon(
                //     icon: Icon(
                //     MdiIcons.google,
                //   ),
                //   onPressed: () {
                //
                //   },
                //   style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(Colors.red),
                //       foregroundColor: MaterialStateProperty.all(Colors.white),
                //     ),
                //   label: Text(
                //     'Sign In with Google'
                //     )
                //     ),
                // ElevatedButton.icon(
                //   icon: Icon(
                //     Icons.facebook
                //   ),
                //   style: ButtonStyle(
                //         backgroundColor: MaterialStateProperty.all(Colors.blue),
                //         foregroundColor: MaterialStateProperty.all(Colors.white),
                //         ),
                //   onPressed: () {
                //
                //   },
                //   label: Text('sign in with facebook')),
              ]
              )
                ),
        ),
      )
    );
  }
//   String baseurl = "http://127.0.0.1:8000/api/login";
//   Future<List<Login>> getUsers() async {
//     try{
//       final response = await http.get(Uri.parse(baseurl));
//       var data = jsonDecode.response.body.toString();
//       if (response.statusCode == 200) {
//         return jsonDecode(response.body);
//     } else {
//       return Future.error("server error");
//     }
//     }catch(e){
//       return Future.error(e);
//   }
// } 
}