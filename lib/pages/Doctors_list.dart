import 'package:flutter/material.dart';
import 'package:medapp/component/Doctor_Card.dart';
import 'package:medapp/pages/doctor_details.dart';
// import 'package:medapp/pages/booking.dart';

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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
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
              ),
              Column(
                children: List.generate(3, (index) {
                  return DoctorCard();
                }
                ),
              ),
            ]
      )
    )
      );
  }
}