import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(index: index, children: [
          Column(
            children: [
              const SizedBox(height: 25),
              //Image Container
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    child: Image.asset('Assets/Images/intro_1.jpeg',
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 30,
              ),
              //2. Text
              SizedBox(
                height: 225,
                width: 365,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\t20% Discount\n\tNew Arrival Product',
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        '\tShop the latest trends to make \n\tyourself more beautiful with this\n\tapp.',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ),
              //3.Button
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 23,
                            height: 8,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    child: Image.asset('Assets/Images/intro_2.jpeg',
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 225,
                width: 365,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\tTake Advantage Of\n\tThe Offer Shopping',
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        '\tYour one-stop shop for all things\n\tfashion with this app.',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 23,
                            height: 8,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    child: Image.asset('Assets/Images/intro_3.jpeg',
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 225,
                width: 365,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\tAll Types Offers\n\tWithin Your Reach',
                      style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        '\tPublish up your selfies to make\n\tyourself more beautiful with this\n\tapp.',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            width: 23,
                            height: 8,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
        floatingActionButton: SizedBox(
          height: MediaQuery.of(context).size.height*0.085,
          width: MediaQuery.of(context).size.width*0.35,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                if (index == 2) {
                  Navigator.of(context).pushNamed('verify');
                } else {
                  index = index + 1;
                }
              });
            },
            child: const Icon(Icons.arrow_forward_rounded,
                color: Colors.white, size: 35),
          ),
        ),
      ),
    );
  }
}
