import 'package:flutter/material.dart';
import 'package:medapp/pages/loginpage.dart';
import 'package:medapp/pages/registrationpage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StartPage extends StatelessWidget{
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left:20.0, right:20.0),
            ),
            Image.asset('assets/images/starting.jpg'),
            Padding(padding: EdgeInsets.only(right: 20, left: 20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Icon(
                MdiIcons.heart
              ),
              Text('Medapp')
              ]
            ),
            Text('A convinient way to book an appointment just by sitting at home',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              )
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical:20, horizontal: 20),
            //   margin: EdgeInsets.only(right: 20, left:20),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     color: Colors.red,
            //   ),
            //   height: 60,
            //   child: Text('Login')
            // ),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
                // shape: RoundedRectangleBorder(
                  // side: BorderSide(
                    // width:5.0,
                    
                  // ),
                // ),
              // ),
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, 
            child: Text('login',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                // height: 5,
              ),
            )
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text('register')
              )
          ]
          ),
      ),
    );
  }
}