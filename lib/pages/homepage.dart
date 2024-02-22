import 'package:flutter/material.dart';
import 'package:medapp/pages/conversation_list.dart';
import 'package:medapp/pages/profilepage.dart';

class HomePage extends StatelessWidget{
const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30.0,
          ),
          actions: [
            Padding(padding: EdgeInsets.all(5.0)),
            IconButton(
              icon: Icon(Icons.chat,
              size: 30.0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConvoPage()));
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
              icon: Icon(Icons.person,
              size: 30.0,
              ),    
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ),
          ],
          title: Text('Home'),
        ),
        body: SingleChildScrollView(
        child :Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10.0),
                child: Text(
                'Book Your Appointment',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(right: 10.0, left: 10),
                child: TextField(
                decoration: InputDecoration(
                  labelText: 'search',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),

                  ),
                ),
              ),
              ),
              // Image(image: AssetImage('assets/images/banner.png'),
              // ),
              Align(
              alignment: Alignment.centerLeft, 
              child: Padding(
                padding:EdgeInsets.only(top: 10, left: 10),
                  child: Text('Categories',
                  // textAlign: TextAlign.start,
                  // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ),

              ),
              
              // GridView.count(
                // crossAxisCount: 2,
    //             mainAxisSpacing: 10,
    //             crossAxisSpacing: 10,
                // children: List.generate(100, (index)) {
                  // child: Text(
                // 'Item $index',
                // style: Theme.of(context).textTheme.headlineSmall,)
                  // Expanded(
                  //   children:[
    //                   Container(
    //                       padding: const EdgeInsets.all(8),
    //                       color: Colors.teal[100],
    //   child: const Text("He'd have you all unravel at the"),
    // ),
    // Container(
    //   padding: const EdgeInsets.all(8),
    //   color: Colors.teal[200],
    //   child: const Text('Heed not the rabble'),
    // ),
                    // ]
                    // )
    //             ]
                // }
                  // ),

                Align(
                  alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text('Doctors',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
                ),
            ],
        ),
            ),
        )
  );
}
}