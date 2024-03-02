import 'package:flutter/material.dart';
import 'package:medapp/pages/loginpage.dart';
import 'package:medapp/pages/registrationpage.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; 

class StartPage extends StatelessWidget{
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('welcome'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 70, left: 10, bottom: 10),
                child: Text('Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                )),
            ),

            Padding(padding: EdgeInsets.only(left:20.0, right:20.0),
              child: Image.asset('assets/images/starting.jpg'),
            ),
            Padding(padding: EdgeInsets.only(right: 20, left: 20),
              child: Align(alignment: Alignment.centerLeft,
              child: Text('Appointment system',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              )
            )),
            ),
            Padding(padding: EdgeInsets.only(left: 20,right:20, top: 10),
                child: Text('A convinient way to book an appointment just by sitting at home',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              )
            ),
            ),
            
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Padding( padding: EdgeInsets.only(top: 20),
                child: Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Register',
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),),
                    ),
              ),
            ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Login',
                      style: TextStyle(
                        color: Colors.white
                      )
                    ),),
                  ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       side: BorderSide(
            //         width:5.0,
                    
            //       ),
            //     ),
            //   ),
            //   onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            // }, 
            // child: Text('login',
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: Colors.white,
            //     // height: 5,
            //   ),
            // )
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            //   },
            //   child: Text('register')
              // )
          ]
          ),
      ),
    );
  }
}