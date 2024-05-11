import 'package:flutter/material.dart';
import 'package:medapp/pages/doctor_details.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({Key? key}) : super(key: key);

  // final Map<String, dynamic> doctor;

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DocDetailPage()));
        },
        child: Container(
          height: 150,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/empty_profile.jpg'),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr Harshad Kamat',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Dentist',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 3, 190, 150),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              '3.5',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 190, 150),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
