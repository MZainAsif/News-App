// ignore_for_file: avoid_unnecessary_containers
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/splash_pic.jpg',
                fit: BoxFit.cover,
                height: height * .5,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'TOP HEADLINES',
                style: GoogleFonts.anton(
                  letterSpacing: .6,
                  fontSize: 19,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SpinKitWaveSpinner(
                color: Colors.red,
                size: 40,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Design & Developed by \n Zain Asif",
                textAlign: TextAlign.center,
                style: GoogleFonts.anton(
                  letterSpacing: .6,
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
