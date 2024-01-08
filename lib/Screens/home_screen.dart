import 'package:easy_animated_tabbar/easy_animated_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/Global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  height: 60,
                  width: 380,
                  // color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: const Icon(Icons.clear_all,
                            color: Colors.white, size: 30),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                spreadRadius: 1),
                          ],
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: Image.asset('Assets/Images/profile.png'),
                      ),
                    ],
                  ),
                ),
              ), //appbar
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: GoogleFonts.poppins(
                            fontSize: 35, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Our Fashion App',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ), //
              const SizedBox(
                height: 4,
              ), // welcomeText
              SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Icon(Icons.search_rounded, size: 30),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                'Search...',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: const Icon(Icons.filter_list_alt,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ), //searchBar
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: 0),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade300),
                          child: Image.asset('Assets/Images/s1.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nike',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Revolution 5',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '\$500',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ), //shoes
              Padding(
                padding: const EdgeInsets.all(14),
                child: SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Categories',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              EasyAnimatedTab(
                buttonTitles: buttons,
                onSelected: (index) {},
                animationDuration: 500,
                activeBorderRadius: 20,
                deActiveBorderRadius: 20,
                minWidthOfItem: 75,
                minHeightOfItem: 20,
                deActiveItemColor: Colors.grey.shade200,
                activeItemColor: Colors.black,
                activeTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold),
                deActiveTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ), //categories
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  //child: ListView.builder(itemBuilder: itemBuilder)
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

// Column(
// children: [
// SizedBox(height: 20,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// height: 200,
// width: 150,
// decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
// ),
// Container(
// height: 200,
// width: 150,
// decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
// ),
// ],
// ),
// SizedBox(height: 20,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// height: 200,
// width: 150,
// decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
// ),
// Container(
// height: 200,
// width: 150,
// decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
// ),
// ],
// ),
// ],
// ),
