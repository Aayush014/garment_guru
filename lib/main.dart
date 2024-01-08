import 'package:flutter/material.dart';
import 'package:garment_guru/Screens/category_screen.dart';
import 'package:garment_guru/Screens/intro_screen.dart';
import 'package:garment_guru/Screens/splash_screen.dart';
import 'package:garment_guru/Screens/verification_screen.dart';
import 'package:garment_guru/Utils/navbar_menu.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      // initialRoute: 'nav',
      routes: {
        '/': (context) => const SplashScreen(),
        'intro': (context) => const IntroScreen(),
        'verify': (context) => const VerifyScreen(),
        'category': (context) => CategoryScreen(),
        'nav': (context) => NavBar(),
      },
    );
  }
}
