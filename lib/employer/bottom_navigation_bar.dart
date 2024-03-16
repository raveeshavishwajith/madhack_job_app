import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:madhack_job_app/pages/dashboard.dart';
import 'package:madhack_job_app/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class EmployeeBottomBar extends StatefulWidget {
  const EmployeeBottomBar({super.key});

  @override
  State<EmployeeBottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<EmployeeBottomBar> {
  int _currentindex = 0;

  List<Widget> body = const [
    Text('Dashboard'),
    Text('Application'),
    Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentindex],
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF095B66),
            currentIndex: _currentindex,
            selectedLabelStyle: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 10,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.white, // Change color as needed
              fontFamily: 'Poppins', // Change font family as needed
              fontSize: 10, // Change font size as needed
            ),
            selectedIconTheme: const IconThemeData(grade: BorderSide.strokeAlignCenter),
            onTap: (int newIndex) {
              setState(() {
                _currentindex = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Dashboard',
                icon: Icon(Icons.home, color: Colors.white),
              ),
              BottomNavigationBarItem(
                label: 'Applications',
                icon: Iconify(Mdi.progress_clock, color: Colors.white),
              ),
              BottomNavigationBarItem(
                  label: 'Settings',
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,

            


          ),
        ),
      ),
    );
  }
}
