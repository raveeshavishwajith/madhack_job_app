import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Find a Job',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF095B66)),
                )),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 280,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3),
                        // Offset
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF095B66),
                        size: 30,
                      ),
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Search Job',
                      hintStyle: TextStyle(
                          color: Color(0xFFBAD5D9),
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Stack(children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF095B66),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 5,
                    child: Iconify(
                      Ic.outline_filter_alt,
                      size: 35,
                      color: Colors.white,
                    ),
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Recent Opportunity',
              style: TextStyle(
                  color: Color(0xFF095B66),
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFB2F6E2),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
