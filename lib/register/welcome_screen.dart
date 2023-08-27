import 'package:app_zone/register/login_screen.dart';
import 'package:app_zone/register/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/backgrounds/welcome.png',
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: const Size(243, 43),
                    side: const BorderSide(color: Color(0xFF9B1A19), width: 2)),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LogInScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9B1A19),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: const Size(243, 43),
                  // side: BorderSide(color: Colors.black,width: 2)
                ),
                child: const Text(
                  "Log In ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
