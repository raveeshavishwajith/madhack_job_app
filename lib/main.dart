import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:madhack_job_app/Global_variables.dart';
import 'package:madhack_job_app/pages/admindashboard.dart';
import 'package:madhack_job_app/pages/carousel_slider_screen.dart';
import 'package:madhack_job_app/pages/dashboard.dart';
import 'firebase_options.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:madhack_job_app/pages/jobform.dart';
import 'package:madhack_job_app/pages/navigationBar.dart';

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
      home: AuthenticationWrapper(),
    );
  }
}

Future<String?> getAccountType(String uid) async {
  try {
    DocumentSnapshot<Map<String, dynamic>> userDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();

    if (userDoc.exists &&
        userDoc.data() != null &&
        userDoc.data()!.containsKey('accountType')) {
      return userDoc.data()!['accountType'];
    } else {
      return null;
    }
  } catch (error) {
    // Handle errors
    print('Error getting user account type: $error');
    return null;
  }
}

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({super.key});

  @override
  _AuthenticationWrapperState createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Or a loading screen
        } else {
          if (snapshot.hasData) {
            // User is logged in

            Future<String?> accountType = getAccountType(snapshot.data!.uid);

            // print(accountType);
            if (accountType == "User Account") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BottomBar()));
            } else if (accountType == "Company Account") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminDashboard()));
            }

            print(snapshot);
            return const BottomBar();
          } else {
            // User is not logged in
            return const CarouselSliderScreen();
          }
        }
      },
    );
  }
}
