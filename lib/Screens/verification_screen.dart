import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2,milliseconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed('nav');
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  // color: Colors.grey,
                  child: Image.asset('Assets/Images/green_tick.gif'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Successful!',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 38),
                ),
                const Center(
                  child: Text(
                    'You have successfully registered in\n\t\t\t\tour app and start working in it',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
