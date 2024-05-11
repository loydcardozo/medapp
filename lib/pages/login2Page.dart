import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medapp/component/customAuth.dart';
import 'package:medapp/pages/Main_layoutPage.dart';
import 'package:medapp/pages/Register2.dart';
// import 'package:medapp/pages/registrationpage.dart';
// import 'homepage.dart';

class loginPage2 extends StatefulWidget {
  const loginPage2({super.key});

  @override
  State<loginPage2> createState() => _loginPage2State();
}

class _loginPage2State extends State<loginPage2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return CustomAuth(
        child: Column(
      children: [
        Expanded(
            flex: 2,
            child: SizedBox(
              height: 10,
            )),
        Expanded(
            flex: 7,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text('Welcome Back',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 13, 108, 33),
                                  )),
                            ),
                            SizedBox(height: 20),
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
                                fillColor: Colors.green[50],
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Icon(
                                  Icons.email,
                                ),
                                prefixIconColor: Colors.black38,
                                hintText: "Email address",
                                labelText: 'Email',
                                // errorText: _isEmailValid ? null : 'Please enter a valid email',
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
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
                                fillColor: Colors.green[50],
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
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
                                        ? Icon(Icons.visibility_off_outlined,
                                            color: Colors.black38)
                                        : Icon(Icons.visibility_outlined,
                                            color: Colors.black38)),
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainLayout()));
                              },
                              child: Container(
                                height: 50,
                                // onPressed: disable ? null : onPressed,
                                decoration: BoxDecoration(
                                    // color: Colors.green[300],
                                    color: Color.fromARGB(255, 13, 108, 33),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('Login',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                      thickness: 2, color: Colors.black54),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 20, bottom: 20, left: 5, right: 5),
                                    child: Text('or continue with')),
                                Expanded(
                                  child: Divider(
                                      thickness: 2, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            MdiIcons.google,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              'Google',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.black54))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.black,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            'Facebook',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        )
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black54,
                                        )),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Don't have an account")),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Registerpage2()));
                                  },
                                  child: Text('Sign In',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 13, 108, 33),
                                    ),
                                  )
                              ),
                            ]),
                          ])),
                ),
              ),
            ))
      ],
    ));
  }
}
