import 'package:flutter/material.dart';
import 'package:medapp/pages/doctor_details.dart';

class DocListPage extends StatefulWidget{
  @override
  _DocListPageState createState() => _DocListPageState();
}
class _DocListPageState extends State<DocListPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Doctors List')
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'search',
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  )
                ),
              ),

              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                 GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DocDetailPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:10, left: 0, right: 0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right:5),
                      height:190,
                      child: Card(
                        color: Colors.white60,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                    
                             Row(
                               children: [
                               Padding(
                                padding: EdgeInsets.only(left:20,top:20),
                                 child: Align(
                                  alignment: Alignment.centerLeft,
                                   child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                      radius: 35,
                                          ),
                                 ),
                               ),
                    
                               Column(
                                 children:
                                  [
                                  Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Dr Loyd Cardozo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    )
                                  )),
                    
                                  Text('specialist'),
                                  // Text('3 years')
                                  ]
                               ),
                               
                               ]
                             ), 
                             GestureDetector(
                              onTap: () {
                    
                              },
                               child: Container(
                                margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Center(child: Text('Book Appointments',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                )),
                               ),
                             )
                          ]
                        )
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DocDetailPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:10, left: 0, right: 0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right:5),
                      height:190,
                      child: Card(
                        color: Colors.white54,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                    
                             Row(
                               children: [
                               Padding(
                                padding: EdgeInsets.only(left:20,top:20),
                                 child: Align(
                                  alignment: Alignment.centerLeft,
                                   child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                      radius: 35,
                                          ),
                                 ),
                               ),
                    
                               Column(
                                 children:
                                  [
                                  Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Dr Loyd Cardozo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    )
                                  )),
                    
                                  Text('specialist'),
                                  // Text('3 years')
                                  ]
                               ),
                               
                               ]
                             ), 
                              GestureDetector(
                              onTap: () {
                    
                              },
                               child: Container(
                                margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Center(child: Text('Book Appointments',
                                  style: TextStyle(
                                    color: Colors.white
                               ),
                                )
                             )
                               )
                             )
                          ]
                        )
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DocDetailPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:10, left: 0, right: 0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right:5),
                      height:190,
                      child: Card(
                        color: Colors.white54,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                    
                             Row(
                               children: [
                               Padding(
                                padding: EdgeInsets.only(left:20,top:20),
                                 child: Align(
                                  alignment: Alignment.centerLeft,
                                   child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                      radius: 35,
                                          ),
                                 ),
                               ),
                    
                               Column(
                                 children:
                                  [
                                  Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Dr Loyd Cardozo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    )
                                  )),
                    
                                  Text('specialist'),
                                  // Text('3 years')
                                  ]
                               ),
                               
                               ]
                             ), 
                              GestureDetector(
                              onTap: () {
                    
                              },
                               child: Container(
                                margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Center(child: Text('Book Appointments',
                                  style: TextStyle(
                                    color: Colors.white
                               ),
                                )
                             )
                               )
                             )
                          ]
                        )
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DocDetailPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top:10, left: 0, right: 0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right:5),
                      height:190,
                      child: Card(
                        color: Colors.white54,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                    
                             Row(
                               children: [
                               Padding(
                                padding: EdgeInsets.only(left:20,top:20),
                                 child: Align(
                                  alignment: Alignment.centerLeft,
                                   child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                      'assets/images/empty_profile.jpg'),
                                      radius: 35,
                                          ),
                                 ),
                               ),
                    
                               Column(
                                 children:
                                  [
                                  Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Dr Loyd Cardozo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                    )
                                  )),
                    
                                  Text('specialist'),
                                  // Text('3 years')
                                  ]
                               ),
                               
                               ]
                             ), 
                             GestureDetector(
                              onTap: () {
                    
                              },
                               child: Container(
                                margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red[700],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Center(child: Text('Book Appointments',
                                  style: TextStyle(
                                    color: Colors.white
                               ),
                                )
                             )
                               )
                             )
                          ]
                        )
                      ),
                    ),
                  ),
                ),
                ]
              )
            ],
            )
        )
      );
  }
}