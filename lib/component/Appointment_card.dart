import 'package:flutter/material.dart';

class Appointment_card extends StatelessWidget {
  const Appointment_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 200,
      child: Card(
        // color: Colors.blue[200],
        // color: Colors.white60,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10, top: 20),
                                child: Text('Dr Harshad Kamat',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                    )
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text('General Practitioner',
                                  style: TextStyle(
                                      color: Colors.black54
                                  )
                              ),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      child: Padding(padding: EdgeInsets.only(left: 20, top: 20),
                        child: Align(alignment: Alignment.centerLeft,
                          // child: CircleAvatar(
                          //   backgroundColor: Colors.green[500],
                          //   radius: 20,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/empty_profile.jpg'),
                            radius: 40,
                          ),
                          // ),
                        ),
                      ),
                    ),
                  ]
              ),
            Row(
              children: [
                Icon(Icons.calendar_month,
                  color: Colors.black45,
                  size: 15,
                ),
                Text('27/02/24',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.lock_clock,
                  color: Colors.black45,
                  size: 15,
                ),
                Text('10:30 AM',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.check,
                   color: Colors.green,
                  size: 15,
                ),
              ],
            ),

             Expanded(
               child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       margin: EdgeInsets.symmetric(horizontal: 10),
                       height: 40,
                       // width: double.infinity,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Center(
                         child: Text('Cancel',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                         ),
                       ),
                     ),
                   ) ,
               
                   Expanded(
                     child: Container(
                       height: 40,
                       margin: EdgeInsets.symmetric(horizontal: 10),
                       // width: double.infinity,
                       decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(10)
                       ),
                         child: Center(
                           child: Text('Reschedule',
                           style: TextStyle(
                             color: Colors.white
                           ),
                           ),
                         ),
                     ),
                   ) ,
               
                 ],
               ),
             )
            ]
        ),
      ),
    );
  }
}