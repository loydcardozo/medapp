import 'package:flutter/material.dart';
import 'package:medapp/pages/conversation_list.dart';
import 'package:medapp/pages/profilepage.dart';

class HomePage extends StatelessWidget{
const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // image: DecorationImage(image: AssetImage('assets/icon/medical-team.png'),)
                ),
                child: Text('Appointment'),
              ),
              ListTile(
                leading: Icon(
                  Icons.book
                ),
                title: Text('appointments'),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.chat
                ),
                title: Text('chats'),
                onTap: () {

                }
              ),
              ListTile(
                leading: Icon(
                  Icons.settings
                ),
                title: Text('settings'),
                onTap: () {

                }
              ),
              // ListTile(
              //   leading: Icon(
              //     Icons.history
              //   ),
              //   title: Text('history'),
              //   onTap: () {

              //   }
              // ),
              ListTile(
                leading: Icon(
                  Icons.payment
                ),
                title: Text('Payment History'),
                onTap: () {

                }
              ),
            ],
          )
        ),
        body: SingleChildScrollView(
        child :Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 4,
            //   mainAxisSpacing: 4,
            //   children: List.generate(1, (index) {
            //     return Padding(
            //       padding: EdgeInsets.all(10.0),
            //       child: Container(
            //         decoration: BoxDecoration(
            //            image: DecorationImage(
            //             image: AssetImage('assets/images/logo.jpg')
            //             )
            //         ),
            //       ),
            //       );
            //   }),
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