import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:medapp/pages/confirmationPage.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  CalendarFormat _format = CalendarFormat.month;
  DateTime _focusDay = DateTime.now();  
  DateTime _currentDay =DateTime.now();
  // int? _currentIndex;
  bool _isWeekend = true;
  bool _dateSelected = true;
  bool _timeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text('book', style: TextStyle(color: Colors.white))),
        body: SingleChildScrollView(
            child: Column(
              children: [
              TableCalendar(
            firstDay: DateTime.utc(2024, 2, 24),
            lastDay: DateTime.utc(2025, 2, 24),
            focusedDay: DateTime.now(),
            calendarFormat: _format,
            currentDay: _currentDay,
            onDaySelected: ((selectedDay, focusedDay) {
              setState(() {
                _currentDay = selectedDay;
                _focusDay = _focusDay;
                _dateSelected;

                if (selectedDay.weekday == 6 || selectedDay.weekday ==7) {
                  _isWeekend;
                  _timeSelected;
                  // _currentIndex =null;
                } else {
                  // _isweekend;
                  return null;
                }
              });
            })
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text('Select Consultancy Time',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          
              GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {

                  },
                    child: Container(
                      height:100,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child : Center(
                        child: Text('9:00 AM', 
                          style: TextStyle(
                            color: Colors.black
                          )
                        ),
                      )
                    ),
                ),

                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),
                    child: Center(
                      child: Text('10:00 AM'))
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),
                    child: Center(child: Text('11:00 AM'))
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.circular(20),
                      color: Colors.grey[400]
                    ),
                    child: Center(
                      child: Text('12:00 AM')
                      )
                  ),
                ),

                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                  ),
                  child: Center(
                    child: Text('1:00 AM'))
                ),

                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                  ),
                  child: Center(child: Text('2:00 AM'))
                ),

                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                  ),
                  child: Center(child: Text('3:00 AM'))
                ),

                Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400]
                    ),
                    child: Center(child: Text('4:00 AM')),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400]
                    ),
                    child: Center(child: Text('5:00 AM'))
                  ),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]
                  ),
                  child: Center(
                    child: Text('6:00 AM')
                    )
                )
              ]
            ),

          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmBook()));
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right:20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                )
              ),
            ),
          ),
        ]
        )
        )
        );
  }
}
