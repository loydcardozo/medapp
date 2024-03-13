import 'package:flutter/material.dart';

class PaymentHistoryPage extends StatefulWidget {
  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment History',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white, 
              radius: 25,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/empty_profile.jpg'
                ),
              )
            ),

          )
        ]
      ),
    );
  }
}