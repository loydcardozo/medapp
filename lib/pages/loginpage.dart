import 'package:flutter/material.dart';
import 'package:medapp/pages/forgot_password1.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/registrationpage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:medapp/api/loginModel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
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
        appBar: AppBar(
        title: Text("Login"),
        ),
        body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding:EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(padding:EdgeInsets.all(10)),
                Image.asset('assets/images/login.jpg'),
                Padding(padding: EdgeInsets.all(20)),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.email,
                      ),
                    labelText: "Email",
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                  login(emailController.text.toString(), passwordController.text.toString());
                  if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Login'),),
                ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: Text('Forgot Password'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassPage()));
                  },
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Text('dont have an account'),
                    TextButton(
                      style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: Text("Sign in"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  }
                ),
                  ]
                ),
                Text('or'),              
                ElevatedButton.icon(
                    icon: Icon(
                    MdiIcons.google,
                  ),
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  label: Text(
                    'Sign In with Google'
                    )
                    ),
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.facebook
                  ),
                  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                  onPressed: () {
          
                  }, 
                  label: Text('sign in with facebook')),
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