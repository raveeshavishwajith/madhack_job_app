import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madhack_job_app/pages/carousel_slider_screen.dart';
import 'package:madhack_job_app/services/firebaseServices.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
              firebaseService.signOut(
                  buildContext: context, screen: const CarouselSliderScreen());
            },
            child: const Text('Admin Logout')),
      ),
    );
  }
}
