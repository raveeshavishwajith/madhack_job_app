import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign out
  Future<void> signOut(
      {required BuildContext buildContext, required Widget screen}) async {
    try {
      await _auth.signOut();
      Navigator.pushReplacement(
          buildContext, MaterialPageRoute(builder: ((context) => screen)));
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  // Get additional user data from Firestore
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection('users').doc(uid).get();
      return snapshot.data();
    } catch (e) {
      print("Error getting user data: $e");
      return null;
    }
  }

  //register function
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required String accountType,
    required String confirmPassword,
    required BuildContext buildContext,
  }) async {
    try {
      // Create user with email and password
      if (password == confirmPassword) {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Navigator.pop(buildContext);
        }).onError((error, stackTrace) {
          print('Error ${error}');
        });
        // Extract the user's UID
        String uid = _auth.currentUser!.uid;

        // Store additional user information in Firestore
        await _firestore.collection('users').doc(uid).set({
          'username': username,
          'accountType': accountType,
          // Add more fields as needed
        });
      }
    } catch (error) {
      // Handle error
      print('Error creating user: $error');
    }
  }

  //login function
  Future<void> loginUserWithEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext buildContext,
      required Widget userDashboard,
      required Widget adminDashboard}) async {
    try {
      // Create user with email and password

      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        //Navigator.pop(buildContext);
        String uid = FirebaseAuth.instance.currentUser!.uid;
        String? accountType = await getAccountType(uid);
        print(accountType);
        if (accountType == "User Account") {
          print('user');
          Navigator.push(buildContext,
              MaterialPageRoute(builder: (context) => userDashboard));
        } else if (accountType == "Company Account") {
          print('admin');
          Navigator.push(buildContext,
              MaterialPageRoute(builder: (context) => adminDashboard));
        } else {
          print('nothing');
          Navigator.push(
            buildContext,
            MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          );
        }
        // String? accountType = await getAccountType(uid);
        // print(accountType);
        // if (accountType == "User Account") {
        //   Navigator.push(buildContext,
        //       MaterialPageRoute(builder: (context) => userDashboard));
        // } else if (accountType == "Company Account") {
        //   Navigator.push(buildContext,
        //       MaterialPageRoute(builder: (context) => adminDashboard));
        // }
      }).onError((error, stackTrace) {
        print('Error ${error}');
      });
    } catch (error) {
      // Handle error
      print('Error creating user: $error');
    }
  }

  //getAccountType
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
}
