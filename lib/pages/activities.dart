import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconify_flutter/icons/ph.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  Future viewCareer() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: <Widget>[
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Color(0xFF095B66),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Senior UI/UX Engineer',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF095B66)),
                    ),
                    const Text(
                      'Colombo, Sri Lanka',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF095B66)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFF095B66),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Remote',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFF095B66),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Full Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Spacer(),
                        Text(
                          '75K/',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF095B66)),
                        ),
                        Text(
                          'mon',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF095B66)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const Text(
                      'Job Description',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'We are seeking a talented and creative UI/UX Designer to join our team. As a UI/UX Designer, you will be responsible for designing and improving user interfaces and experiences across our digital products. You will collaborate closely with product managers, developers, and other stakeholders to understand user needs and translate them into intuitive, user-friendly designs.',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Key Responsibilities',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Create wireframes, prototypes, and mockups to effectively communicate design ideas.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Design visually appealing user interfaces that enhance user experience and usability.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Conduct user research and gather feedback to inform design decisions.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Requirments',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Bachelor\'s degree in Design, Human-Computer Interaction, or related field.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Proven experience as a UI/UX Designer or similar role.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Activities',
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
                          hintText: 'Search Activity',
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
                          Ph.bookmark_bold,
                          size: 35,
                          color: Colors.white,
                        ),
                      )
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 350,
                  child: Divider(
                    color: Color(0xFF095B66),
                    thickness: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Senior UI/UX Engineer',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Colombo, Sri Lanka',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Row(
                              children: [
                                Text(
                                  '75K/',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF095B66)),
                                ),
                                Text(
                                  'mon',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF095B66)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: viewCareer,
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          'Rejected',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Full Stack Developer',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Jaffna, Sri Lanka',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Row(
                              children: [
                                Text(
                                  '115K/',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF095B66)),
                                ),
                                Text(
                                  'mon',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF095B66)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {},
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          'Rejected',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFF095B66), width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'System Analyst',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Colombo, Sri Lanka',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Row(
                              children: [
                                Text(
                                  '35K/',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF095B66)),
                                ),
                                Text(
                                  'mon',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF095B66)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {},
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF095B66),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          'Approved',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Front end Engineer',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Colombo, Sri Lanka',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Row(
                              children: [
                                Text(
                                  '45K/',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF095B66)),
                                ),
                                Text(
                                  'mon',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF095B66)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {},
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          'Rejected',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFFEECC5D), width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Business Analyst',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Colombo, Sri Lanka',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Row(
                              children: [
                                Text(
                                  '55K/',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF095B66)),
                                ),
                                Text(
                                  'mon',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF095B66)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Remote',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Time',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: () {},
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFEECC5D),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          'Pending',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
