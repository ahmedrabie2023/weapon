import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weapon/scr/screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds: 4,
        ),
            () => Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "الشوربجي",
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.15),
              const Text(
                "PICK YOUR WEAPON",
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          )),
    );
  }
}
