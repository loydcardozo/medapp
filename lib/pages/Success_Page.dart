import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medapp/pages/homepage.dart';

class SuccessBookpage extends StatelessWidget {
  const SuccessBookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Lottie.asset('assets/images/success.json'),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text('Successfully Booked',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                )
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 190, 150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Back to Home Page',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())),
                ),
              )
            ]
          )
      ),
    );
  }
}
