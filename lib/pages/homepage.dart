import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('book your appointment'),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/background.png')),
              TextField(
                decoration: InputDecoration(
                  labelText: 'search',
                ),
              ),
              Text('categories'),
            ]
            ),
        ),
  );
}
}