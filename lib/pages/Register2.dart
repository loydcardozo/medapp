import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medapp/component/customAuth.dart';
import 'package:medapp/pages/login2Page.dart';

class Registerpage2 extends StatefulWidget {
  const Registerpage2({super.key});

  @override
  State<Registerpage2> createState() => _Registerpage2State();
}

class _Registerpage2State extends State<Registerpage2> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController NameController = TextEditingController();
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
              )
          ),
    Expanded(
    flex: 7,
    child: Container(
    height: double.infinity,
    width:  double.infinity,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40)
    )
    ),
    child: SingleChildScrollView(
    child: Form(
    key: _formKey,
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Align(
                  alignment: Alignment.center,
                  child: Text('Welcome',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
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

                SizedBox(
                    height: 20
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

                SizedBox(
                    height: 20
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
                        child: Text('or sign in with')),
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
                    ),
                  ],
                ),
                Row(
                    children:[
                      Padding(padding: EdgeInsets.only(right:50)),
                      Text('Already have an account'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginPage2()));
                        },
                        child: Text('Login'),
                      ),

                    ]
                ),
              ]
          )
      ),
    ),
    ),
    ),
    ),
        ],
      ),
    );
  }
}
