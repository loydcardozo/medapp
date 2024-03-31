import 'package:flutter/material.dart';
import 'package:medapp/pages/homepage.dart';

class ConfirmBook extends StatelessWidget{
  const ConfirmBook({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/doneImage.jpg')
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text('your appointment has been booked successfully',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30
                )
              )),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                  ),
                  child: Center(
                    child: Text('Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
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