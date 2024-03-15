import 'package:flutter/material.dart';
import 'package:madhack_job_app/Global_variables.dart';
import 'package:madhack_job_app/pages/carousel_slider_screen.dart';
import 'firebase_options.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
