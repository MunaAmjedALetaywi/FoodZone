import 'package:app_zone/buttom_navigation_bar_screens/buttom_navigation_bar_screens.dart';
import 'package:app_zone/register/login_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
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
                    "Forget Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Enter your email address to reset your \n password instruction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 290,
                  margin: const EdgeInsets.only(top: 160,left: 20),
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
                  height: 50,
                  width: 290,
                  margin: const EdgeInsets.only(top: 260,left: 20),
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
                      "Send Link",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 340),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogInScreen()),
                      );
                    },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF9B1A19),
                      ),
                    ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 340),
                      child: const Text(
                        "Back to ",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 340),
                        child: const Text(
                          "Log in  ",
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 340),
                      child: const Text(
                        "page?",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}