import 'package:flutter/material.dart';
import 'package:medapp/pages/appointment_list.dart';
import 'package:medapp/pages/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medapp/pages/notification.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: [
          HomePage(),
          AppointmentListPage(),
          NotificationPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
          selectedItemColor: Colors.green,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(
                page,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut
            );
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
              label: 'home'
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
            label: 'Appointments'
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.message),
            label: 'Notifications'
          )
        ]
      ),
    );
  }
}
