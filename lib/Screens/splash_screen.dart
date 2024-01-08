import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed('intro');
      },
    );
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('Assets/Images/splash_screen.jpeg',
              fit: BoxFit.cover),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black54,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'G',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 60),
                ),
                Text(
                  'arment',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 40),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'G',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 60),
                ),
                Text(
                  'uru',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 40),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Life My Style',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Spacer(),
            Text("AKP's Work !",
                style: GoogleFonts.croissantOne(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17)),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ],
    )));
  }
}
