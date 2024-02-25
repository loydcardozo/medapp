import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/loginpage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController HealthInfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(padding: EdgeInsets.all(20)),
                Image.asset('assets/images/login.png'),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: firstNameController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                TextFormField(
                  controller: lastNameController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
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
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: dateOfBirthController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                TextFormField(
                  controller: addressController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                TextFormField(
                  controller: phoneNumberController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                TextFormField(
                  controller: HealthInfoController,
                  validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
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
                GestureDetector(
                  onTap: (){
                  (emailController.text.toString(), passwordController.text.toString());
                  if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
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
                Row(
                  children:[
                    Padding(padding: EdgeInsets.only(right:50)),
                    Text('Already have an account'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Login'),
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
      )
      )
    );
  }
}