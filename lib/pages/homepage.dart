import 'package:flutter/material.dart';
import 'package:medapp/pages/conversation_list.dart';
import 'package:medapp/pages/profilepage.dart';
import 'package:medapp/pages/setting.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ConvoPage()));
                }
              ),
              ListTile(
                leading: Icon(
                  Icons.settings
                ),
                title: Text('Payment History'),
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
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                }
              ),
              
            ],
          ),
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
              // Column(
              //   children: [
                Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding:EdgeInsets.only(top: 10, left: 10),
                  child: Text('symptoms',
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),                
                ),
                ),
              //   ]
              // ),
              Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap:() {

                },
                child: Container(
                  width: 120,
                  height: 120,                  // color: Colors.red,
                  // decoration: BoxDecoration(
                    child: Column(
                      children: [
                      Image(
                        height:120,
                        width: 120,
                        image: AssetImage('assets/images/cough.jpg'),
                         ),
                        //  Text('cough')
                      ]
                    ),
                  // )
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  width: 160,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image(
                        height: 120,
                        width: 120,
                        image: AssetImage('assets/images/cough.jpg')
                      ),
                      // Text('cough')
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  width: 160,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image(
                        height: 120,
                        width: 120,
                        image: AssetImage('assets/images/cough.jpg')
                      )
                    ]
                  )
                ),
              ),
            ],
        ),
            ),
              Align(
              alignment: Alignment.centerLeft, 
              child: Padding(
                padding:EdgeInsets.only(top: 10, left: 10),
                  child: Text('Categories',
                  // textAlign: TextAlign.start,chro
                  // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ),

              ),

              GridView.count(
              crossAxisCount: 2,
              // crossAxisSpacing: 4,
              // mainAxisSpacing: 4,
              children: [
                  Container(
                    color: Colors.teal[200],
                    height: 20,
                    width: 20,
                    // decoration: BoxDecoration(
                    //    image: DecorationImage(
                    //     image: AssetImage('assets/images/logo.jpg')
                    //     )
                    // ),
                  ),
                  Container(
                    color: Colors.teal[200],
                    height: 20,
                    width: 20,
                    // decoration: BoxDecoration(
                    //    image: DecorationImage(
                    //     image: AssetImage('assets/images/logo.jpg')
                    //     )
                    // ),
                  ),
                  Container(
                    color: Colors.teal[200],
                    height: 20,
                    width: 20,
                    // decoration: BoxDecoration(
                    //    image: DecorationImage(
                    //     image: AssetImage('assets/images/logo.jpg')
                    //     )
                    // ),
                  ),
                  Container(
                    color: Colors.teal[200],
                    height: 20,
                    width: 20,
                    // decoration: BoxDecoration(
                    //    image: DecorationImage(
                    //     image: AssetImage('assets/images/logo.jpg')
                    //     )
                    // ),
                  ),
                  Container(
                    color: Colors.teal[200],
                    height: 20,
                    width: 20,
                    // decoration: BoxDecoration(
                    //    image: DecorationImage(
                    //     image: AssetImage('assets/images/logo.jpg')
                    //     )
                    // ),
                  ),
              ]
              ),
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