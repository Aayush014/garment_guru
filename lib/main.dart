import 'package:flutter/material.dart';
import 'package:garment_guru/Screens/Items/bag_screen.dart';
import 'package:garment_guru/Screens/Items/jacket_screen.dart';
import 'package:garment_guru/Screens/Items/tshirt_screen.dart';
import 'package:garment_guru/Screens/cart_screen.dart';
import 'package:garment_guru/Screens/intro_screen.dart';
import 'package:garment_guru/Screens/splash_screen.dart';
import 'package:garment_guru/Screens/verification_screen.dart';
import 'package:garment_guru/Utils/navbar_menu.dart';
import 'Screens/Items/shoes_screen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      //initialRoute: 'nav',
      routes: {
        '/': (context) => const SplashScreen(),
        'intro': (context) => const IntroScreen(),
        'verify': (context) => const VerifyScreen(),
        'nav': (context) => const NavBar(),
        't-shirt': (context) => const TshirtScreen(),
        'shoes': (context) => const ShoesScreen(),
        'bag': (context) => const BagScreen(),
        'jacket': (context) => const JacketScreen(),
        'cart': (context) => const CartScreen(),
      },
    );
  }
}
