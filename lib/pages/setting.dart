import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
         children:[
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right:20),
              height:50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red
              ),
              child: Center(
                child: Text('Log out',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              )
            ),
          )
         ] 
        )
      )
    );
  }
} 