import 'package:flutter/material.dart';
import 'package:medapp/pages/conversation_list.dart';
import 'package:medapp/pages/profilepage.dart';
import 'package:medapp/pages/setting.dart';
import 'package:medapp/pages/appointment_list.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentListPage()));
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
                Padding(
                  padding:EdgeInsets.only(top: 10, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('todays reminder',
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 150,
                    child: Card(
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left:20 , top: 20),
                              child: Align(alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                // backgroundColor: Colors.green[500],
                                radius: 20,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                  radius: 20,
                                ), 
                              ),
                                                    ),
                            ),
                            Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:10, top: 20),
                              child: Text('Dr Loyd Cardozo',
                                style: TextStyle(
                                  color: Colors.white
                                )
                              )),
                            Text('specialist',
                              style: TextStyle(
                                color: Colors.white
                              )
                            ),
                          ]
                        ),
                           
                            ]
                        ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right:5, left:5),
                      child: Container(
                        height: 50,
                        child: Card(
                                color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.calendar_month_rounded,
                                    color: Colors.white,
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('mon, july 21',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left:20),
                                  child: Icon(
                                    Icons.access_time_outlined,
                                    color: Colors.white
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('11:00 - 12:00',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ))
                              ]
                            )
                               ),
                      ),
                    ),
                        
                      ]
                    ),
                    ),
                  ),
                ),
                  
                
                 
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

              Container(
                margin: EdgeInsets.only(left:10, right:10),
                child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap:() {

                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:() {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:() {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                ]
                ),
              ),
          

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

                Container(
                  margin: EdgeInsets.only(left:10, right:10),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap:() {

                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:() {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:() {
                        
                      },
                      child: Container(
                        height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    ]
                    ),
                ),
            ],
        ),
      // ]
        ),
        )
  // ),
  );
}
}