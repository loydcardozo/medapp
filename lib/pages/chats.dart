import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget{
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Image.asset('assets/images/empty-profile.jpg'),
        leading: Icon(
          Icons.person,
          color: Colors.white
        ),
        actions: [
            Padding(padding: EdgeInsets.all(5.0)),
            IconButton(
              icon: Icon(Icons.phone,
              size: 30.0,
              color: Colors.white,
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
              icon: Icon(Icons.videocam,
              size: 30.0,
              color: Colors.white
              ),    
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
              },
            ),
            ),
          ],
        title: Text('loyd cardozo',
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),

    body: SafeArea(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                )
              )
              ),
              Container(
                child: Row(
                  children: [

                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your message"
                        ),
                      ),
                      ),

                      IconButton(
                        onPressed: () {}, 
                      icon: Icon(Icons.send),
                      )
                  ],
                  )
              )
          ],
          )
      ),
      )


//       body: Stack(
//   children: [
//     Positioned(
//       left: 0,
//       right: 0,
//       bottom: 0,
//       child: Container(
//         color: Colors.white,
//         child: Container(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             children: [
//               SingleChildScrollView(
//                 child: Flexible(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'enter your text',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 )
//               ),
//               SizedBox(height: 16), 
//               IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: () {
                  
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
    );
  }
}