import 'package:flutter/material.dart';
import 'package:medapp/component/Appointment_card.dart';
import 'package:medapp/component/banner.dart';
import 'package:medapp/component/doctor_card2.dart';
import 'package:medapp/pages/Doctors_list.dart';
import 'package:medapp/pages/conversation_list.dart';
import 'package:medapp/pages/profilepage.dart';
// import 'package:medapp/pages/setting.dart';
import 'package:medapp/pages/appointment_list.dart';
// import 'package:medapp/pages/doctors_list.dart';
// import 'package:medapp/pages/notification.dart';
// import 'package:medapp/pages/paymenthistory.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'dart:convert';
import 'package:medapp/component/Doctor_Card.dart';
// import 'package:medapp/component/Appointment_Card.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget{
const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  // String _searchText = '';
  Map<String, dynamic> user = {};
 
  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

@override
Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions: [
            Padding(padding: EdgeInsets.all(5.0)),
            // IconButton(
            //   icon: Icon(Icons.chat,
            //   size: 30.0,
            //   color: Colors.black,
            //   ),
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => ConvoPage()));
            //   },
            // ),
            

            Padding(
              padding: EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
                  backgroundColor: Colors.transparent
                ),
              ),
            )
          ],
          // title: Text('Home',
          //   style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold
          //   )
          // ),
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Colors.teal
        //             ),
        //         child: Text('Appointment',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold
        //           )
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.book
        //         ),
        //         title: Text('appointments'),
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentListPage()));
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.chat
        //         ),
        //         title: Text('chats'),
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => ConvoPage()));
        //         }
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.payment
        //         ),
        //         title: Text('Doctors List'),
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=> DocListPage()));
        //         }
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.settings
        //         ),
        //         title: Text('Payment History'),
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentHistoryPage()));
        //         }
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.history
        //         ),
        //         title: Text('Notification'),
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
        //         }
        //       ),
        //            GestureDetector(
        //     onTap: () {
        //
        //     },
        //     child: Padding(
        //       padding: EdgeInsets.only(top: 20),
        //       child: Container(
        //         margin: EdgeInsets.only(left: 20, right:20),
        //         height:50,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: Colors.red[700]
        //         ),
        //         child: Center(
        //           child: Text('Log out',
        //             style: TextStyle(
        //               color: Colors.white
        //             )
        //           ),
        //
        //       ),
        //                 ),
        //     )
        //         ),
        //
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    // color: Colors.green[300],
                    //   color: HexColor("#425E7A"),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          'Schedule Your Next Medical Appointment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                              letterSpacing: 1
                            // color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(right: 10.0, left: 10),
                        child: TextField(
                          onTap: () {
                            showSearch(
                              context: context,
                              delegate: CustomSearchDelegate(),
                            );
                          },
                          controller: _searchController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black12,
                            labelText: 'Search',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      )
                    ]
                  )
                ),

                  banner(),

                  Row(
                    children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding:EdgeInsets.only(top: 10, left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Today's Reminder",
                            style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AppointmentListPage()));
                          },
                          child: Text('See More',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15
                            )
                          )
                        ),
                      ),
                    )
                    ]
                  ),

                Appointment_card(),

                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Doctors',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          )
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> DocListPage()));
                          },
                          child: Text('See More',
                            style: TextStyle(
                              color: Colors.green
                            ),
                          )
                      ),
                    ),
                  ],
                ),

                Column(
                  children: List.generate(3, (index) {
                    return DoctorCard();
                  }
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

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        query = '';
      },
    )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
    }
  }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result =matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery=[];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}