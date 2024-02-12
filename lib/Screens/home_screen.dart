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
              //appbar
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
                        height: 40,
                        width: 40,
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
                        height: 50,
                        width: 50,
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
              ),
              const SizedBox(
                height: 20,
              ),
              //welcome Text
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
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Our Fashion App',
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ), //
              const SizedBox(
                height: 2,
              ),
              //searchBar
              SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.75,
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
                      padding: const EdgeInsets.all(1),
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
              ),
              //shoes
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
              ),
              //Category
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
              SizedBox(
                height: 420,
                // color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('t-shirt');
                              });
                            },
                            child: customBox(
                                Image.asset(cate[0]['img1']), 'T-Shirt')),
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('shoes');
                              });
                            },
                            child: customBox(
                                Image.asset(cate[0]['img2']), 'Shoes')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('bag');
                              });
                            },
                            child: customBox(
                                Image.asset(cate[0]['img3']), 'Bags')),
                        InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('jacket');
                              });
                            },
                            child: customBox(
                                Image.asset(cate[0]['img4']), 'Jackets')),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

Widget customBox(Image l1, String s1) {
  return Container(
    width: 150,
    height: 180,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.grey.shade300, Colors.white]),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
        ]),
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 130,
          width: 150,
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: l1,
        ),
        Text(
          s1,
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        )
      ],
    ),
  );
}
