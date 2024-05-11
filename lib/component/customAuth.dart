import 'package:flutter/material.dart';

class CustomAuth extends StatelessWidget {
  CustomAuth({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/backgroundImage.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(child: child!)
        ],
      ),
    );
  }
}
