import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/Fruits&Vegitables.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/MasalaDryFruits/MasalaDryFruits.dart';
import 'package:rupiyo/Features/Presentation/Widgets/SellerPageLoader.dart';
import 'package:sizer/sizer.dart';

class NearestSellerPage extends StatefulWidget {
  const NearestSellerPage({super.key});

  @override
  State<NearestSellerPage> createState() => _NearestSellerPageState();
}

class _NearestSellerPageState extends State<NearestSellerPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return const WideLayout();
        } else {
          return const NarrowLayout();
        }
      },
    );
  }
}

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({super.key});

  @override
  State<NarrowLayout> createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  //late bool _isLoading;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFDF2C25),
          toolbarHeight: 50,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const InkWell(
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 21,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 21,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.heart,
                size: 21,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.arrowshape_turn_up_right,
                size: 21,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 21,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 128,
                                  height: 130,
                                  decoration: const BoxDecoration(
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/Images/dmart.jpg'),
                                          opacity: 30,
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, left: 13),
                                      child: Text(
                                        'Seller Shop Name',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                        maxLines: 1,
                                        softWrap: true,
                                        // TextStyle(
                                        //     fontSize: 20,
                                        //     fontWeight: FontWeight.w600),
                                      ),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, right: 0, left: 30),
                                      child: Center(
                                          child: Text(
                                        'Continental - Chinese - Sandwich',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey.shade700),
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, right: 0, left: 70),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 14.w,
                                            height: 3.h,
                                            decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 9, 108, 12),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 5),
                                              child: Center(
                                                  child: Text(
                                                '4.1 \u2605',
                                                style: TextStyle(
                                                    fontSize: 11.4,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            '14k ratings',
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                        right: 0,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            //mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 39.w,
                                                height: 3.3.h,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 249, 249, 249),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20)),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 5),
                                                  child: Center(
                                                    child: Text(
                                                      '🕔 40-45 min - 9km',
                                                      style: TextStyle(
                                                          fontSize: 11.4,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 19.w,
                                                height: 3.3.h,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 249, 249, 249),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight: Radius
                                                              .circular(10),
                                                          topRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0)),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 5),
                                                  child: Center(
                                                    child: Text(
                                                      'Sector 37',
                                                      style: TextStyle(
                                                          fontSize: 11.4,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 10), // Horizontal List Items
                  // const SearchAppBar(),
                  // const SizedBox(height: 10),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       Column(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 10, vertical: 14),
                  //             child: Row(
                  //               children: [
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/Fitness.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/OrganicFood.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/babyCare.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/PartyEssential.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/petcare.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   width: 16.w,
                  //                   height: 10.h,
                  //                   // decoration: BoxDecoration(
                  //                   //   borderRadius: BorderRadius.circular(13),
                  //                   //   border: Border.all(color: Colors.grey),
                  //                   // ),
                  //                   child: InkWell(
                  //                     onTap: () {},
                  //                     child: Container(
                  //                       margin: const EdgeInsets.all(2),
                  //                       child: Image.asset(
                  //                         "Assets/Images/KitchenNeeds.png",
                  //                         // width: 64,
                  //                         // height: 65,
                  //                         fit: BoxFit.fitWidth,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Divider()),
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                              child: Text(
                                "Available Items Categories",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push<void>(_createRoute1());
                                        },
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/Masala.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push<void>(_createRoute2());
                                        },
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/sweet.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/FrozenFood.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/packeged.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //  children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push<void>(_createRoute3());
                                        },
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/DairyBread.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/MUN.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/meat.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/Masala.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/BreakFast.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/tea.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/Biscuits.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/makeup.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/Pet.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/PaanCorner.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
                                  height: 120,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    //OutlineInputBorder ,
                                    //color: Colors.purple[50],
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Masala & Dry Fruits',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/Hygiene.png",
                                          // width: 64,
                                          // height: 67,
                                          fit: BoxFit.contain,
                                        ),
                                      ),

                                      // const Row(
                                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //   children: [
                                      //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                      //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                      //   ],
                                      // )
                                    ],
                                  ),

                                  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFDF2C25),
          toolbarHeight: 50,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const InkWell(
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 21,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 21,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.heart,
                size: 21,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.arrowshape_turn_up_right,
                size: 21,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 21,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: _isLoading == true
              ? const Center(
                  child: SellerPageLoader(),
                  //   child: Padding(
                  //   padding: EdgeInsets.all(3.0),
                  //   child: LinearProgressIndicator(
                  //     minHeight: 5,
                  //     backgroundColor: Colors.white,
                  //     color: Color(0XFFDF2C25),
                  //   ),
                  // )
                )
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 210,
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'Assets/Images/dmart.jpg'),
                                                opacity: 30,
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Center(
                                              child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, left: 140),
                                            child: Text(
                                              'Seller Shop Name',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                              maxLines: 1,
                                              softWrap: true,
                                              // TextStyle(
                                              //     fontSize: 20,
                                              //     fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, right: 0, left: 210),
                                            child: Center(
                                                child: Text(
                                              'Continental - Chinese - Sandwich',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey.shade700),
                                            )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, right: 0, left: 210),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 14.w,
                                                  height: 3.h,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 9, 108, 12),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 5),
                                                    child: Center(
                                                        child: Text(
                                                      '4.1 \u2605',
                                                      style: TextStyle(
                                                          fontSize: 11.4,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  '14k ratings',
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 16,
                                              left: 180,
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 16.w,
                                                      height: 3.h,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 249, 249, 249),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 9,
                                                                vertical: 5),
                                                        child: Center(
                                                          child: Text(
                                                            '🕔 40-45 min - 9km',
                                                            style: TextStyle(
                                                                fontSize: 11.4,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 16.w,
                                                      height: 3.h,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 249, 249, 249),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0)),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8,
                                                                vertical: 5),
                                                        child: Center(
                                                          child: Text(
                                                            'Sector 37',
                                                            style: TextStyle(
                                                                fontSize: 11.4,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 10), // Horizontal List Items
                        // const SearchAppBar(),
                        // const SizedBox(height: 10),
                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //     children: [
                        //       Column(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.symmetric(
                        //                 horizontal: 10, vertical: 14),
                        //             child: Row(
                        //               children: [
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/Fitness.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/OrganicFood.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/babyCare.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/PartyEssential.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/petcare.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Container(
                        //                   width: 16.w,
                        //                   height: 10.h,
                        //                   // decoration: BoxDecoration(
                        //                   //   borderRadius: BorderRadius.circular(13),
                        //                   //   border: Border.all(color: Colors.grey),
                        //                   // ),
                        //                   child: InkWell(
                        //                     onTap: () {},
                        //                     child: Container(
                        //                       margin: const EdgeInsets.all(2),
                        //                       child: Image.asset(
                        //                         "Assets/Images/KitchenNeeds.png",
                        //                         // width: 64,
                        //                         // height: 65,
                        //                         fit: BoxFit.fitWidth,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: Divider()),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Center(
                                    child: Text(
                                      "Available Items Categories",
                                      style: TextStyle(fontSize: 19),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: Divider()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push<void>(
                                                        _createRoute1());
                                              },
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/Masala.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push<void>(
                                                        _createRoute2());
                                              },
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/sweet.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/FrozenFood.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/packeged.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //  children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push<void>(
                                                        _createRoute3());
                                              },
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/DairyBread.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/MUN.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/meat.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/Masala.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/BreakFast.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/tea.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/Biscuits.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/makeup.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/Pet.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/PaanCorner.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 0,
                                            left: 0,
                                            top: 0,
                                            bottom: 0),
                                        height: 240,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          //OutlineInputBorder ,
                                          //color: Colors.purple[50],
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.white,
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),

                                            // ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "Assets/Images/Hygiene.png",
                                                // width: 64,
                                                // height: 67,
                                                fit: BoxFit.contain,
                                              ),
                                            ),

                                            // const Row(
                                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                            //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                                            //   ],
                                            // )
                                          ],
                                        ),

                                        // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

Route _createRoute1() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const MasalaDryFruits(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);
      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute2() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const FruitsAndVegitables(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);
      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute3() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const FruitsAndVegitables(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);
      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}
