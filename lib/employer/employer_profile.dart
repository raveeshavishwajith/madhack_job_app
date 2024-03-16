import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/cil.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:madhack_job_app/components/jobformFields.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:madhack_job_app/pages/carousel_slider_screen.dart';
import 'package:madhack_job_app/services/firebaseServices.dart';


class Employerprofile extends StatefulWidget {
  const Employerprofile({super.key});

  @override
  State<Employerprofile> createState() => _EmployerprofileState();
}

class _EmployerprofileState extends State<Employerprofile> {

  final companynameController = TextEditingController();
  final companyemailController = TextEditingController();
  final companymobileController = TextEditingController();
  final companyaddressController = TextEditingController();
  final FirebaseService firebaseService = FirebaseService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Color(0xFF095B66),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 35),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Divider(
                color: Color(0xFF095B66), // Change line color as needed
                thickness: 2, // Change line thickness as needed
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB2F6E2),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xFFB2F6E2),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Iconify(
                        Pajamas.profile,
                        color: Color(0xFF095B66),
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Codecon pvt LTD.',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF095B66)),
            ),
            const Text(
              'codecon@info.com',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF095B66)),
            ),
            const Text(
              '011-9090871',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF095B66)),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Iconify(
                        Jam.write,
                        color: Color(0xFF095B66),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: const Text(
                          'Update Profile',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF095B66)),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Wrap(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              child: const Icon(
                                                Icons.cancel,
                                                color: Color(0xFF095B66),
                                              ),
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            const SizedBox(
                                              width: 10,
                                              height: 5,
                                            )
                                          ],
                                        ),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child:  Text(
                                            'Update Profile',
                                            style: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF095B66)),
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Jobfields(
                                          controller: companynameController,
                                          hinttext: 'Company Name',
                                          obscuretext: false,
                                          height: 50,
                                          width: 350,
                                          right: 0,
                                          left: 0,
                                        ),
                                        Jobfields(
                                          controller: companyemailController,
                                          hinttext: 'Email Address',
                                          obscuretext: false,
                                          height: 50,
                                          width: 350,
                                          right: 0,
                                          left: 0,
                                        ),
                                        
                                        Jobfields(
                                          controller: companymobileController,
                                          hinttext: 'Mobile Phone',
                                          obscuretext: false,
                                          height: 50,
                                          width: 350,
                                          right: 0,
                                          left: 0,
                                        ),
                                        Jobfields(
                                          controller: companyaddressController,
                                          hinttext: 'Address',
                                          obscuretext: false,
                                          height: 50,
                                          width: 350,
                                          right: 0,
                                          left: 0,
                                        ),
                                        
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                            child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: const Color(
                                                0xFF095B66), // Text color
                                            padding: const EdgeInsets.only(
                                                top: 8,
                                                bottom: 8,
                                                right: 140,
                                                left: 140), // Button padding
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  8.0), // Button border radius
                                            ),
                                          ),
                                          child: const Text(
                                            "Update",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                 
                  const Divider(
                    color: Color(0xFF095B66), // Change line color as needed
                    thickness: 2, // Change line thickness as needed
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Iconify(
                        Ph.password_bold,
                        color: Color(0xFF095B66),
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF095B66)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      firebaseService.signOut(
                          buildContext: context,
                          screen: const CarouselSliderScreen());
                    },
                    child: const Row(
                      children: [
                        Iconify(
                          MaterialSymbols.logout_sharp,
                          color: Color(0xFF095B66),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF095B66)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}