import 'package:flutter/material.dart';

class Jobfields extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscuretext;
  final double height ;
  final double width ;
  final double right ;
  final double left;

  const Jobfields(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscuretext,
      required this.height,
      required this.width,
      required this.right,
      required this.left,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin:
           EdgeInsets.only(left: left, right: right, bottom: 8.0, top: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF095B66),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(9.0),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            contentPadding: const EdgeInsets.only(left: 15.0),
            hintStyle: const TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              color: Color(0xFF095B66),
            )),
      ),
    );
  }
}
