import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medapp/pages/booking.dart';
// import 'package:medapp/pages/chats.dart';
import 'package:page_transition/page_transition.dart';

class DocDetailPage extends StatefulWidget{
  @override
  _DocDetailPageState createState() => _DocDetailPageState();
}
class _DocDetailPageState extends State<DocDetailPage> {
  @override
  Widget build(BuildContext context) {
    // final doctor = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          title: Text('Doctors Details',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  children:[
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.center,
                        child: Text('Dr. Loyd Cardozo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),

                    Align(
                        alignment: Alignment.center,
                        child: Text('dentist',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[600]
                            )
                        )),

                    SizedBox(height: 10),

                    Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 140,
                              width: 150,
                              child: Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text('Reviews',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          )),

                                      Padding(
                                        padding: EdgeInsets.only(left: 20, top: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                              children: [
                                                Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 30,
                                                ),

                                                Padding(
                                                  padding: EdgeInsets.only(left: 5),
                                                  child: Text('5.0',
                                                      style: TextStyle(
                                                        fontWeight:FontWeight.bold,
                                                        fontSize: 30,
                                                      )
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 140,
                              width: 150,
                              child: Card(
                                color: Colors.white60,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text('Experience',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        )
                                    ),
                            
                                    Padding(
                                      padding: EdgeInsets.only(top:10),
                                      child: Text('5 years',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ]
                    ),
                    SizedBox(height: 10),

                    Align(
                      alignment: Alignment .centerLeft,
                      child: Text('Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Align(
                      alignment : Alignment.centerLeft,
                      child: Text(' With a knack for using complex medical jargon, Dr. Pseudonym can bamboozle even the most seasoned medical professionals with her impressive-sounding diagnoses. Her patients often leave the office feeling more confused than when they arrived, but they trust her implicitly because, after all, she sounds so knowledgeable!',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                            height: 1.5
                          )
                      ),
                    ),

                    SizedBox(height: 20),

                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft, child: BookPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 3, 190, 150),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Book Now",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),


                  ]
              ),
            )
        )
    );
  }
}