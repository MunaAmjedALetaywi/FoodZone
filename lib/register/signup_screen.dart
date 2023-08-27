import 'package:app_zone/buttom_navigation_bar_screens/buttom_navigation_bar_screens.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Image.asset(
            'assets/backgrounds/login_signup.png',
            fit: BoxFit.fill,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 200, 40, 100),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF9B1A19).withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Registration',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 290,
                  margin: const EdgeInsets.only(top: 80,left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1, color: Colors.black),
                      ),
                      enabled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Username",
                      labelStyle: const TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 290,
                  margin: const EdgeInsets.only(top: 150,left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1, color: Colors.black),
                      ),
                      enabled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 290,
                  margin: const EdgeInsets.only(top: 220,left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1, color: Colors.black),
                      ),
                      enabled: true,
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.key,
                        color: Colors.black,
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 290,
                  margin: const EdgeInsets.only(top: 290,left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1, color: Colors.black),
                      ),
                      enabled: true,
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      labelText: "Confirm Password",
                      labelStyle: const TextStyle(color: Colors.black38),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  width: 290,
                  margin: const EdgeInsets.only(top: 380,left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ButtomNavigationScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9B1A19),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(243, 43),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 450),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 65,
                        child: const Divider(
                          color: Colors.black45,
                          thickness: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'or sign up with',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 65,
                        child: const Divider(
                          color: Colors.black45,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 480,left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/facebook.png"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/google.png"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/twitter.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}