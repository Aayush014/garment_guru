import 'package:flutter/material.dart';
import 'package:garment_guru/Screens/cart_screen.dart';
import 'package:garment_guru/Screens/profile_screen.dart';
import 'package:garment_guru/Screens/wishList_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Screens/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    WishListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey,
              spreadRadius: 1,

            )
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 90,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                child: GNav(
                  tabBorderRadius: 20,
                  rippleColor: Colors.grey[500]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 10,
                  activeColor: Colors.black,
                  iconSize: 27,
                  haptic: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  duration: const Duration(milliseconds: 200),
                  tabBackgroundColor: Colors.grey[200]!,
                  color: Colors.black,
                  style: GnavStyle.google,
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.storefront,
                      text: 'Cart',
                    ),
                    GButton(
                      icon: Icons.favorite_outline_rounded,
                      text: 'WishList',
                    ),
                    GButton(
                      icon: Icons.person_outline_rounded,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
