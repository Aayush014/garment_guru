import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.search_rounded,
                        size: 29,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Search Categories',
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade800,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('New Arrivals',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('208 Products',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 33.7,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'Assets/Images/h1.png',
                            fit: BoxFit.contain,
                          ))
                    ],
                  ),
                ), //done
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('Assets/Images/h2.png',
                                  fit: BoxFit.cover))),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Clothes',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('258 Products',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Bags',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('160 Products',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(
                          child: Container(
                            height: 125,
                            child: Image.asset(
                              'Assets/Images/h3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ), //done
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('Assets/Images/h4.png',
                                  fit: BoxFit.cover))),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Shoes',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('230 Products',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 125,
                  width: 380,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Electronics',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('130 Products',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 33.7,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'Assets/Images/h5.png',
                            fit: BoxFit.contain,
                          ))
                    ],
                  ),
                ), //done
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                          'Skip',
                          style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white
                          ),
                        )),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushReplacementNamed('nav');
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
