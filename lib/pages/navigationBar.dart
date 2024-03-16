import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:madhack_job_app/pages/dashboard.dart';
import 'package:madhack_job_app/pages/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentindex = 0;

  List<Widget> body = const [
    Dashboard(),
    Text('Activities'),
    Profile(),
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
                label: 'Activities',
                icon: Iconify(Mdi.progress_clock, color: Colors.white),
              ),
              BottomNavigationBarItem(
                  label: 'Profile',
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
