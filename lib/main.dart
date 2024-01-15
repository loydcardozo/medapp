import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
     debugShowCheckedModeBanner: false,
    home: const HomePage(),
      theme: ThemeData(brightness: Brightness.dark),
  );
}
}