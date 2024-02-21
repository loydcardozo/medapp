import 'package:flutter/material.dart';

class ConvoPage extends StatelessWidget{
const ConvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chats"),
      ),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
}