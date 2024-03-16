import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:madhack_job_app/employer/applications.dart';
import 'package:madhack_job_app/employer/employer_dashboard.dart';
import 'package:madhack_job_app/employer/employer_profile.dart';
import 'package:madhack_job_app/pages/dashboard.dart';
import 'package:madhack_job_app/pages/jobform.dart';
import 'package:madhack_job_app/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedBar extends StatefulWidget {
  const CurvedBar({super.key});

  @override
  State<CurvedBar> createState() => _CurvedBarState();
}

class _CurvedBarState extends State<CurvedBar> {
  int _currentindex = 0;

  List<Widget> body = const [
    EmployerDashboard(),
    EmployerApplication(),
    Employerprofile(),
    Jobform(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: body[_currentindex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFF095B66),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Iconify(
            Mdi.progress_clock,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.add_task,
            color: Colors.white,
            size: 30,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
