import 'package:flutter/material.dart';
import 'package:madhack_job_app/Global_variables.dart';
import 'package:madhack_job_app/pages/carousel_slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: GlobalVariables.darkGreen,
        ),
        useMaterial3: true,
      ),
      home: const CarouselSliderScreen(),
    );
  }
}
