import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:medapp/pages/Success_Page.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  CalendarFormat _format = CalendarFormat.month;
  DateTime _focusDay = DateTime.now();  
  DateTime _currentDay = DateTime.now();
  int? _currentIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text('Schedule', style: TextStyle(color: Colors.black))),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _tableCalender(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Center(
                      child: Text(
                        'Select Consultancy Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      ),
                    )
                  )
                ],
              )
            ),
            _isWeekend
                ? SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                alignment: Alignment.center,
                child: Text(
                  'Weekend is not available, please select another date',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  )
                ),
              )
            )
                :SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                      _timeSelected = true;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _currentIndex == index
                            ? Colors.green
                            : Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: _currentIndex == index
                        ? Colors.white
                          : null,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${index + 9}:00 ${index + 9 > 11 ? "PM" : "AM"}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _currentIndex == index ? Colors.green : null,
                      ),
                    )
                  )
                );
              },
              childCount: 8,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 190, 150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Make Appointment',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: _timeSelected && _dateSelected ? () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SuccessBookpage()));
                  } : null,
                )
              ),
            )
          ],
        )
        );
  }
  Widget _tableCalender() {
    return TableCalendar(
      focusedDay: _focusDay,
      firstDay: DateTime.now(),
      lastDay: DateTime(2025, 12, 31),
      calendarFormat: _format,
      currentDay: _currentDay,
      rowHeight: 48,
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
        ),
      availableCalendarFormats: {
        CalendarFormat.month: 'Month',
      },
      onFormatChanged: (format) {
        setState(() {
          _format = format;
        });
      },
      onDaySelected: ((selectedDay, focusedDay) {
        setState(() {
          _currentDay = selectedDay;
          _focusDay = focusedDay;
          _dateSelected = true;
          if (selectedDay.weekday == 6 || selectedDay.weekday == 7) {
            _isWeekend = true;
            _timeSelected = false;
            _currentIndex = null;
          } else {
            _isWeekend = false;
          }
        });
      }),
    );
  }
}
