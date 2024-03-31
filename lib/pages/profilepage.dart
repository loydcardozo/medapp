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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
            },
          )
        ],
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                )
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),

          Row(
            children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Personal Information',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          )
                      )),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                  },
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text('Edit Button',
                        style: TextStyle(
                          color: Colors.blue
                        )
                      ),
                    ),
                ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            // width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10)
              ),
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey
                )
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.person,
                    color: Colors.black54
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Full Name',
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Loyd Cardozo',
                        style: TextStyle(
                          color: Colors.black54
                        )
                      )),
                )
              ]
            )
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey
                )
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.email,
                    color: Colors.black54
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Email',
                    style: TextStyle(
                      color: Colors.black54
                    )
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('loyd.cardozo@gmail.com',
                    style: TextStyle(
                      color: Colors.black54
                    )
                  ),
                )
              ],
            )
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border(
                bottom: BorderSide(
                  color: Colors.black54
                )
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.lock,
                    color: Colors.black54
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('password',
                    style: TextStyle(
                      color: Colors.black54
                    )
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('deded',
                    style: TextStyle(
                      color: Colors.black54
                    )
                  ),
                )
              ],
            )
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height:40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border(
                bottom: BorderSide(
                  color: Colors.black54
                )
              )
            )
          ),

          Container(
            height: 40,
            margin: EdgeInsets.only(left: 2),
            decoration: BoxDecoration(
              color: Colors.grey[300]
            )
          )

        ]
      )
      )
    );
  }
}