import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30.0,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
              icon: Icon(Icons.person,
              size: 30.0,
              ),
              onPressed: () {},
            ),
            ),
          ],
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),

                  ),
                ),
              ),
              ),
              // Image(image: AssetImage('assets/images/banner.png'),
              // ),
              Align(
              alignment: Alignment.centerLeft, 
              child: Padding(
                padding:EdgeInsets.only(top: 10, left: 10),
                  child: Text('Categories',
                  // textAlign: TextAlign.start,
                  // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
                ),

              ),
              
              // Row(
              //   children: [
              //     Card(
              //       child: GridView.count(
              //         // gridDelegate= SliverGridDelegateWithFixedCrossAxisCount,
              //         crossAxisCount: 3,
              //         children: [

              //         ],
                    
              //     ),
              //   ),
              //   ],
              //   ),
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
            ],
        ),
            ),
  );
}
}