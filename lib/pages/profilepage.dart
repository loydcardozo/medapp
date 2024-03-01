import 'package:flutter/material.dart';
import 'package:medapp/pages/editprofilepage.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.edit,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
            },
          )
        ],
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
      child: Column(
     children:[
      Container(
        height:200,
        decoration: BoxDecoration(
          // color: Colors.green,
          image: DecorationImage(
          image: AssetImage('assets/images/empty_profile.jpg',
          ),
        ),
          ),
        ),

        Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding:EdgeInsets.only(top: 10, left: 10),
                  child: Text('Personal Information',
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),                
                ),
                ),
        Container(
          child: Column(
            children: [
                Container(
                  // child: Card(
                  //   color: Colors.blue[200],
                  //     shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.only(bottom:0),
                            child: Card(
                            color: Colors.grey[300],
                            child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.black
                                      ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text('First name',
                                      style: TextStyle(
                                        color: Colors.black
                                      )
                                    ),
                                  ),
                                                    
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text('Loyd',
                                      style: TextStyle(
                                        color: Colors.black
                                      ),
                                    ))
                                ]
                              )
                            ),
                          ),
                        ),

                        Container(
                          height: 50,
                          child: Card(
                            color: Colors.grey[300],
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('Last Name',
                                    style: TextStyle(
                                      color: Colors.black
                                    )
                                  ),
                                ),
                        
                                
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('Cardozo',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          )
                        ),

                        Container(
                          height: 50,
                          child: Card(
                          color: Colors.grey[300],
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('email',
                                    style: TextStyle(
                                      color: Colors.black
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('loyd@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          ),
                        ),

                        Container(
                          height: 50,
                          child: Card(
                          color: Colors.grey[300],
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('Date of Birth',
                                    style: TextStyle(
                                      color: Colors.black
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('07-11-02',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          ),
                        ),

                        Container(
                          height: 50,
                          child: Card(
                          color: Colors.grey[300],
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('address',
                                    style: TextStyle(
                                      color: Colors.black
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('private te',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          ),
                        ),

                        Container(
                          height: 50,
                          child: Card(
                          color: Colors.grey[300],
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('phone number',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('223232332',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          ),
                        ),

                        Container(
                          height: 50,
                          child: Card(
                          color: Colors.grey[300],
                          child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                    ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('health Info',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                  ),
                                ),
                        
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('kya karega janke',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  ))
                              ]
                            )
                          ),
                        ),

                      ]
                    ),
                ),
                GestureDetector(
            onTap: () {
              
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right:20, top:20),
              height:50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red
              ),
              child: Center(
                child: Text('Log out',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              )
            ),
          )
            ]
          ),          
        )
     ]
      )
      )
    );
  }
}