import 'package:flutter/material.dart';
import '../../Utils/Global.dart';
import '../cart_screen.dart';

class ShoesScreen extends StatefulWidget {
  const ShoesScreen({super.key});

  @override
  State<ShoesScreen> createState() => _ShoesScreenState();
}

class _ShoesScreenState extends State<ShoesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                                () {
                              Navigator.of(context).pop();
                            },
                          );
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          child: Icon(Icons.arrow_back_rounded,
                              color: Colors.white, size: 30),
                        ),
                      ),
                      const Spacer(),
                      const Text('Shoes',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700)),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(
                                () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CartScreen(),
                                ),
                              );
                            },
                          );
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 30,
                          child: Icon(Icons.storefront,
                              color: Colors.white, size: 30),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1000,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      4,
                          (index) => itemBox(
                        Image.asset(
                          shoesData[1][index],
                          fit: BoxFit.cover,
                        ),
                        shoesData[0][index],
                        shoesData[2][index],
                        shoesData[3][index],
                        context,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(
                                      () {
                                    click = !click;
                                    index;
                                  },
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                    click == true
                                        ? Icons.favorite_border_rounded
                                        : Icons.favorite_rounded,
                                    size: 30,
                                    color: (click == true)
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(
                                      () {
                                    cartList.add(shoesData);
                                  },
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Cart",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

Widget itemBox(
    Image l1,
    String tName,
    String bName,
    String p,
    index,
    Row r1,
    ) {
  return Container(
    height: 210,
    width: 315,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2,
          spreadRadius: 0.4,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 115,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: l1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 180,
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(tName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(bName,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600)),
              Text(
                p,
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.grey.shade900),
              ),
              const SizedBox(
                height: 20,
              ),
              r1,
            ],
          ),
        )
      ],
    ),
  );
}

List shoesData = [
  [
    'Grey Solid Jacket with Zip',
    'Solid Winter Puffer Jacket',
    'Blue Denim with white for Men',
    'Navy Blue Plain Band Collar Jacket'
  ],
  [
    'Assets/Images/s1.png',
    'Assets/Images/s1_1.jpg',
    'Assets/Images/s1_2.jpg',
    'Assets/Images/s1_3.png',
  ],
  ['Nike', 'Under Armour', 'Sketchers', 'Jordan'],
  ['\$92', '\$100', '\$150', '\$900'],
];
bool click = false;