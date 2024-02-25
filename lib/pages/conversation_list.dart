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
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                  ),
                )
              ),
              ElevatedButton(
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsPage()));
                },
                child: Text('Chat'),
              )
            ]
            ),
        ),
        ),
    );
  }

}