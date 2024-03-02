import 'package:flutter/material.dart';

class DocDetailPage extends StatefulWidget{
  @override
  _DocDetailPageState createState() => _DocDetailPageState();
}
class _DocDetailPageState extends State<DocDetailPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Doctors Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:[
              Center(
                child: Image(image: AssetImage('assets/images/empty_profile.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Dr. Loyd Cardozo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  )),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Specialist',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600]
                    )
                  )),
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:20, top:20),
                    child: Container(
                    height: 150,
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

                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      height: 150,
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
                    Padding(
                      padding: EdgeInsets.only(left: 20, top:20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('doctors Description')),
                    ),
                    
                        Container(
                          margin: EdgeInsets.only(left:20, right:20, top: 20),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.red,
                          ),
                          child: Center(child: Text('Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            )
                          )),
                        ),

                      
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(left:20, right:20, top: 20),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text('Send Message',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              )
                            )),
                        ),
                      
            ]
          )
        )
      );
  }
}