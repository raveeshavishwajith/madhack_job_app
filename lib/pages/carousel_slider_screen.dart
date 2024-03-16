import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:madhack_job_app/employer/bottom_navigation_bar.dart';
import 'package:madhack_job_app/employer/curved_bar.dart';
import 'package:madhack_job_app/global_variables.dart';
import 'package:madhack_job_app/pages/admindashboard.dart';
import 'package:madhack_job_app/pages/navigationBar.dart';
import 'package:madhack_job_app/services/firebaseServices.dart';

class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({super.key});

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String currentItem = "";

  List<String> items = ["User Account", "Company Account"];

  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseService firebaseService = FirebaseService();

  Future<void> _loginBottomSheet() {
    return showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, top: 10.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: GlobalVariables.darkGreen),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: GlobalVariables.darkGreen, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          hintText: 'Email Address',
                          labelText: 'Email Address'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        border: OutlineInputBorder(
                          gapPadding: 50,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(),
                      child: ElevatedButton(
                        onPressed: () {
                          firebaseService.loginUserWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                            buildContext: context,
                            userDashboard: const BottomBar(),
                            adminDashboard: const CurvedBar(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalVariables.darkGreen,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: GlobalVariables.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't you have an account?",
                          style: TextStyle(
                            color: GlobalVariables.darkGreen,
                            fontSize: 15.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _registerBottomSheet();
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: GlobalVariables.darkGreen,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        });
  }

  Future<void> _registerBottomSheet() {
    return showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Wrap(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: GlobalVariables.darkGreen),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_2_outlined),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: GlobalVariables.darkGreen, width: 2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: 'Enter your username',
                            labelText: 'Username'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: GlobalVariables.darkGreen, width: 2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: 'Enter your email address',
                            labelText: 'Email Address'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 62,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 158, 158, 158),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 44.0, right: 10.0),
                          child: DropdownButtonHideUnderline(
                            // Hide the default underline
                            child: DropdownButton<String>(
                              value: currentItem,
                              items: items
                                  .map<DropdownMenuItem<String>>(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  currentItem = value!;
                                });
                              },
                              icon: const Icon(
                                  Icons.arrow_drop_down), // Add dropdown icon
                              iconSize:
                                  24, // Adjust the size of the dropdown icon
                              isExpanded:
                                  true, // Ensure the dropdown button expands to fit the container width
                              underline:
                                  const SizedBox(), // Ensure the underline is not shown
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          border: OutlineInputBorder(
                            gapPadding: 50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          border: OutlineInputBorder(
                            gapPadding: 50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(),
                        child: ElevatedButton(
                          onPressed: () {
                            firebaseService.createUserWithEmailAndPassword(
                              buildContext: context,
                              email: _emailController.text,
                              password: _passwordController.text,
                              confirmPassword: _confirmPasswordController.text,
                              accountType: currentItem,
                              username: _usernameController.text,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalVariables.darkGreen,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: GlobalVariables.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: GlobalVariables.darkGreen,
                              fontSize: 15.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              _loginBottomSheet();
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: GlobalVariables.darkGreen,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          });
        });
  }

  Widget buildImage(String image, int index) => SizedBox(
        width: double.infinity,
        child: Image.asset(image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: GlobalVariables.carouselImageList.length,
            itemBuilder: ((context, index, realIndex) {
              final image = GlobalVariables.carouselImageList[index];
              return buildImage(image, index);
            }),
            options: CarouselOptions(
              // height: double.infinity,
              aspectRatio: MediaQuery.of(context).size.width /
                  MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              autoPlay: true,
              reverse: false,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.0,
            left: MediaQuery.of(context).size.height / 30,
            child: SizedBox(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Find',
                        style: TextStyle(
                          fontSize: 50,
                          color: GlobalVariables.white,
                        ),
                      ),
                      Text(
                        ' Your',
                        style: TextStyle(
                          fontSize: 50,
                          color: GlobalVariables.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 50,
                    child: Row(
                      children: [
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText(
                              'Dream',
                              textStyle: const TextStyle(
                                fontSize: 50,
                                color: GlobalVariables.lightBlue,
                                fontWeight: FontWeight.w500,
                              ),
                              // speed: const Duration(microseconds: 3000),
                            ),
                            TyperAnimatedText(
                              'Remote',
                              textStyle: const TextStyle(
                                fontSize: 50,
                                color: GlobalVariables.lightBlue,
                                fontWeight: FontWeight.w500,
                              ),
                              // speed: const Duration(microseconds: 3000),
                            ),
                            TyperAnimatedText(
                              'Hybrid',
                              textStyle: const TextStyle(
                                fontSize: 50,
                                color: GlobalVariables.lightBlue,
                                fontWeight: FontWeight.w500,
                              ),
                              // speed: const Duration(microseconds: 3000),
                            ),
                          ],
                        ),
                        const Text(
                          ' Job',
                          style: TextStyle(
                            fontSize: 50,
                            color: GlobalVariables.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 155,
              decoration: const BoxDecoration(
                color: GlobalVariables.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: GlobalVariables.black,
                    blurRadius: 5,
                    offset: Offset(0, -1), // Shadow position
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(),
                        child: ElevatedButton(
                          onPressed: _loginBottomSheet,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalVariables.darkGreen,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: GlobalVariables.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't you have an account?",
                            style: TextStyle(
                              color: GlobalVariables.darkGreen,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: _registerBottomSheet,
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: GlobalVariables.darkGreen,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
