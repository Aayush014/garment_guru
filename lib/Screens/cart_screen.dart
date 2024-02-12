import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: IconButton(
                          iconSize: 50,
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Back',
                          style: TextStyle(fontSize: 23, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      'Cart',
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: List.generate(
                      3,
                      (index) => cartBox(
                        Image.asset(
                          cartData[1][index],
                          fit: BoxFit.cover,
                        ),
                        cartData[0][index],
                        cartData[2][index],
                        index,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 15, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Base Price',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '\$1550',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taxes',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '\$155',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Text(
                          '\$1705',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.black12,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x320E151B),
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            alignment: const AlignmentDirectional(0, -0.35),
            child: const Text(
              'Checkout (\$1705)',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cartBox(
  Image l1,
  String tName,
  String p,
  index,
) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
    child: Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 8, 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: 'ControllerImage',
              transitionOnUserGestures: true,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: l1),
            ),
             Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      tName,
                    ),
                  ),
                  Text(p),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      'Quanity: 1',
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              iconSize: 35,
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.grey,
                size: 25,
              ),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 35,
              icon: const Icon(
                Icons.delete_outline_rounded,
                color: Color(0xFFE86969),
                size: 25,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ),
  );
}

List cartData = [
  [
    'Puma Edition',
    'Nike Jordan',
    'Side Bag',
  ],
  [
    'Assets/Images/t4.jpg',
    'Assets/Images/s1_3.png',
    'Assets/Images/b3.jpg',
  ],
  ['\$150', '\$900', '\$500'],
];
int index =0;