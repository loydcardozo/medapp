import 'package:flutter/material.dart';
import 'package:medapp/pages/chats.dart';

class ConvoPage extends StatelessWidget{
const ConvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chats"),
      ),
      body: SingleChildScrollView(
        child: 
          ElevatedButton(
            child: Text('chat'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsPage()));
            }
          ),
      ),
    );
  }
}