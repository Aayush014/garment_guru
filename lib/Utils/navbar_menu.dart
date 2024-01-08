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
      backgroundColor: Colors.grey,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 85,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: GNav(
                  tabBorderRadius: 20,
                  rippleColor: Colors.grey[500]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 10,
                  activeColor: Colors.black,
                  iconSize: 30,
                  haptic: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 200),
                  tabBackgroundColor: Colors.grey[200]!,
                  color: Colors.black,
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
