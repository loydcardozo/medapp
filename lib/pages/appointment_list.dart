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
        title: Text('Appointments')
      ),
      body: SingleChildScrollView(
        
        child: Card(
          child: GestureDetector(
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
        )
      ),
    );
  }
}