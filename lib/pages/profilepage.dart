import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:medapp/pages/editprofilepage.dart';
import 'package:medapp/component/profile_details.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
                        backgroundColor: Colors.transparent
                    ),
                    TextButton(onPressed: () {

                    }, child: Text('Change Profile Picture',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 190, 150),
                        )
                    )
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Profile Information',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        )
                    ),
                    SizedBox(height: 10),
                    Profile_details(
                      title: 'Name',
                      value: 'Loyd Cardozo',
                      onPressed: () {}
                    ),
                    Profile_details(
                        onPressed: () {},
                        title: 'Email',
                        value: 'loyd@gmail.com'
                    ),

                    Divider(),

                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Personal Information',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        )
                    ),

                    Profile_details(
                        onPressed: () {},
                        title: 'DOB',
                        value: '07-11-2002'
                    ),

                    Profile_details(
                        onPressed: () {},
                        title: 'address',
                        value: 'somewhere'
                    ),
                    Profile_details(
                        onPressed: () {},
                        title: 'Phone Number',
                        value: '9322234333'
                    ),
                    Divider(),

                    SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                          onPressed: () {},
                          child: Center(
                            child: Text('Log Out',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

