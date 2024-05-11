import 'package:flutter/material.dart';
// import 'package:medapp/pages/homepage.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:medapp/pages/loginpage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medapp/pages/login2Page.dart';
import 'package:medapp/pages/login_signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // scaffoldBackgroundColor: HexColor("#425E7A"),
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.greenAccent,
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.greenAccent
            )
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
          floatingLabelStyle: TextStyle(color: Colors.greenAccent),
          prefixIconColor: Colors.black38,
        ),
        // textTheme: TextTheme(
        //   displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        //   bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
        // ),
        iconTheme: IconThemeData(color: Colors.white),
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            // color: Colors.blue[700],
            // color: Colors.green[300]
            // color: HexColor("#3B3B40"),
          ),
        ),
      // theme: ThemeData(brightness: Brightness.dark),
    // home: loginPage2(),
    home: login_signup(),
  );
}
}

