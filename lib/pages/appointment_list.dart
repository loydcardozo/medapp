import 'package:flutter/material.dart';

class AppointmentListPage extends StatefulWidget{
  @override
  _AppointmentListPageState createState() => _AppointmentListPageState();
}

class _AppointmentListPageState extends State<AppointmentListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments History',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: SingleChildScrollView(     
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('Upcoming')
                  ),

                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('past')),

                Text('cancel')
                ]
                ),

            GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 200,
                    child: Card(
                      // color: Colors.blue[200],
                      // color: Colors.white60,
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left:20 , top: 20),
                              child: Align(alignment: Alignment.centerLeft,
                              // child: CircleAvatar(
                              //   backgroundColor: Colors.green[500],
                              //   radius: 20,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                  radius: 20,
                                ), 
                              // ),
                                                    ),
                            ),
                            Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:10, top: 20),
                              child: Text('Dr Loyd Cardozo',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                )
                              )),
                            Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text('specialist',
                                style: TextStyle(
                                  color: Colors.black54
                                )
                              ),
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
                                // color: Colors.blue[100],
                                color: Colors.red[700],
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
                      Row(
                        children: [
                        Padding(
                          padding: EdgeInsets.only(left:20, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap:() {
                                
                              },
                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text('cancel',
                                    style: TextStyle(
                                      color: Colors.white
                                    )
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.red[700],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: Text('reschedule',
                                  style: TextStyle(
                                    color: Colors.white
                                  )
                                ),
                              )
                            ),
                          ),
                        )
                        ]
                      )  
                      ]
                    ),
                    ),
                  ),
                ),
          ]
        ),  
        
      ),
    );
  }
}