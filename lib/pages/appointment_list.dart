import 'package:flutter/material.dart';
import 'package:medapp/pages/Homepage.dart';

class AppointmentListPage extends StatefulWidget {
  const AppointmentListPage({Key? key}) : super(key: key);

  @override
  State<AppointmentListPage> createState() => _AppointmentListPageState();
}

enum FilterStatus { upcoming, complete, cancel }

class _AppointmentListPageState extends State<AppointmentListPage> {
  FilterStatus status = FilterStatus.upcoming;
  Alignment _alignment = Alignment.centerLeft;
  List<dynamic> schedules = [
    {
      "doctor_name": "Dr Harshad Kamat",
      "doctor_profile": "assets/images/empty_profile.jpg",
      "category": "General Practitioner",
      "status": FilterStatus.upcoming,
    },
    {
      "doctor_name": "Dr Neuman Coriea",
      "doctor_profile": "assets/images/empty_profile.jpg",
      "category": "Diabetologist",
      "status": FilterStatus.complete,
    },
    {
      "doctor_name": "Dr Edgard Dias",
      "doctor_profile": "assets/images/empty_profile.jpg",
      "category": "dentist",
      "status": FilterStatus.cancel,
    }
  ];

  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules = schedules.where((var schedule) {
      return schedule['status'] == status;
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Text(
                //   'Appointment schedule',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (FilterStatus filterStatus in FilterStatus.values)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  status = filterStatus;
                                  switch (status) {
                                    case FilterStatus.upcoming:
                                      _alignment = Alignment.centerLeft;
                                      break;
                                    case FilterStatus.complete:
                                      _alignment = Alignment.center;
                                      break;
                                    case FilterStatus.cancel:
                                      _alignment = Alignment.centerRight;
                                      break;
                                  }
                                });
                              },
                              // child: Center(
                              //   child: Text(filterStatus.toString().split('.').last),
                              // ),
                              child: Center(
                                child: Text(filterStatus.name),
                              )
                            ),
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      alignment: _alignment,
                      duration: Duration(milliseconds: 200),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            // status.toString().split('.').last,
                            status.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filteredSchedules.length,
                  itemBuilder: (context, index) {
                    var schedule = filteredSchedules[index];
                    bool isLastElement = filteredSchedules.length + 1 == index;
                    return Container(
                      height: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: !isLastElement
                            ? EdgeInsets.only(bottom: 20)
                            : EdgeInsets.zero,
                        color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
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
                                              child: Text(
                                                schedule["doctor_name"],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25
                                                ),
                                              ),),
                                            Padding(
                                              padding: EdgeInsets.only(right: 30),
                                              child: Text(
                                                schedule["category"],
                                                style: TextStyle(
                                                  color: Colors.black54
                                                ),
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Padding(padding: EdgeInsets.only(left: 20, top: 20),
                                        child: Align(alignment: Alignment.centerLeft,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(schedule["doctor_profile"]),
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
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
