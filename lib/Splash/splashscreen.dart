import 'dart:async';
import 'package:app_zone/Splash/onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds:5),() {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const Onbording()
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/splash_img.png'),
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Food Zone',
                style: TextStyle(
                  fontSize: 50,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 15
                    ..color = Colors.black,
                ),
              ).animate()
            .fade(duration: 500.ms)
            .scale(delay: 500.ms),
              // Solid text as fill.
              const Text(
                'Food Zone',
                style: TextStyle(
                  fontSize: 50,
                  color: Color(0xFFB31312),
                ),
              ).animate()
                  .fade(duration: 500.ms)
                  .scale(delay: 500.ms)
            ],
          ),
        ),
      ),
    );
  }
}