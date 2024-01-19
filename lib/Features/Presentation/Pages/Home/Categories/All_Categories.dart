// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/Fruits&Vegitables.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
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
  void initState() {
    // _isLoading = true;
    // Future.delayed(const Duration(milliseconds: 1100), () {
    //   setState(() {
    //     _isLoading = false;
    //   });
    // });
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Center(
          child: Text(
            'All Categories',
            style: TextStyle(color: Colors.white, fontSize: 21),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, '/SecondBottomBar');
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround, //1st Row
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 0, left: 0, top: 0, bottom: 0),
                                    height: 130,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      //OutlineInputBorder ,
                                      // color: Colors.purple[50],
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
                                        //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                        // child: Container(
                                        //   alignment: Alignment.centerLeft,
                                        //   child: const Text(
                                        //     'Frutis & Vegetables',
                                        //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                        //   ),
                                        // ),

                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FruitsAndVegitables()));
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(3),
                                            child: Image.asset(
                                              "Assets/Images/CategoriesImages/Fruits&Vegitables.jpg",
                                              // width: 120,
                                              // height: 73,
                                              fit: BoxFit.cover,
                                            ),
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
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 0, left: 0, top: 0, bottom: 0),
                                height: 130,
                                width: 180,
                                decoration: BoxDecoration(
                                  //OutlineInputBorder ,
                                  // color: Colors.purple[50],
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
                                    //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                    // child: Container(
                                    //   alignment: Alignment.centerLeft,
                                    //   child: const Text(
                                    //     'Atta, Rice, Oils & Dals',
                                    //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color:  Colors.deepPurple),
                                    //   ),
                                    // ),

                                    // ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: const EdgeInsets.all(3),
                                        child: Image.asset(
                                            "Assets/Images/CategoriesImages/Atta.png",
                                            // width: 120,
                                            // height: 73,
                                            fit: BoxFit.cover),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceAround, //2nd Row
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                const SizedBox(
                                  width: 10,
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
                                      //     'Sweet\nCravings',
                                      //     style: TextStyle(fontSize: 9.6, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/sweet.png",
                                          // width: 70,
                                          // height: 60,
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
                                const SizedBox(
                                  width: 10,
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
                                      //   Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      //   child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Frozen Food & Ice Creams',
                                      //     style: TextStyle(fontSize: 9.6, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),
                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          margin: const EdgeInsets.all(2),
                                          child: Image.asset(
                                            "Assets/Images/CategoriesImages/FrozenFood.png",
                                            // width: 64,
                                            // height: 45,
                                            fit: BoxFit.contain,
                                          ),
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
                                const SizedBox(
                                  width: 10,
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
                                      //     'Packaged\nFood',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/packeged.png",
                                          // width: 64,
                                          // height: 65,
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
                                //   //child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                // ),
                                // Container(
                                //   margin: const EdgeInsets.only(right: 4, left: 4, top: 0, bottom: 12),
                                //    height: 140,
                                //   width: 90,
                                //   decoration: BoxDecoration(
                                //       //OutlineInputBorder ,
                                //       color: Colors.purple[50],
                                //     borderRadius: BorderRadius.circular(15.0),
                                //   ),
                                //  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        //3rd Row
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                //   alignment: Alignment.centerRight,
                                //   child: const Text(
                                //     'Dairy,Bread\n&Eggs',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),
                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.all(0),
                                    child: Image.asset(
                                      "Assets/Images/CategoriesImages/DairyBread.png",
                                      // width: 64,
                                      // height: 65,
                                      fit: BoxFit.contain,
                                    ),
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
                                //Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // child: Container(
                                //   alignment: Alignment.centerLeft,
                                //   child: const Text(
                                //     'Cold Drinks\n&Juices',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                //),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                    // width: 64,
                                    // height: 65,
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
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                // child: Container(
                                //   alignment: Alignment.center,
                                //   child: const Text(
                                //     'Cleaning Essentials',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/MUN.png",
                                    // width: 64,
                                    // height: 65,
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
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/meat.png",
                                    // width: 64,
                                    // height: 45,
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
                        //4th Row
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 0, left: 0, top: 0, bottom: 0),
                            height: 120,
                            width: 82,
                            decoration: BoxDecoration(
                              //OutlineInputBorder ,
                              // color: Colors.purple[50],
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
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),
                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/BreakFast.png",
                                    // width: 64,
                                    // height: 45,
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
                                // // child: Container(
                                // //   alignment: Alignment.centerLeft,
                                // //   child: const Text(
                                // //     'Masala & Dry Fruits',
                                // //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                // //   ),
                                // // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/tea.png",
                                    // width: 64,
                                    // height: 45,
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
                                // // child: Container(
                                // //   alignment: Alignment.centerLeft,
                                // //   child: const Text(
                                // //     'Masala & Dry Fruits',
                                // //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                // //   ),
                                // // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/Biscuits.png",
                                    // width: 64,
                                    // height: 45,
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
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/makeup.png",
                                    // width: 64,
                                    // height: 45,
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                // const Row(
                                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                //   ],
                                // ),
                              ],
                            ),

                            // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              'Explore New Categories',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // Meats Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
                              decoration: BoxDecoration(
                                //OutlineInputBorder ,
                                //color: Colors.purple[50],
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0,
                                    blurRadius: 120,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/SeaFood.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // KitchenSections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/KitchenNeeds.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // PetCareSections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/petcare.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // PartyEssentials
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/PartyEssential.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // Fitness Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/Fitness.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // OrganicFood Secions
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/OrganicFood.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // BabyCare Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 130,
                              width: 96,
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
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/babyCare.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                            //const SizedBox(height: 20,),
                          ],
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

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  // late bool _isLoading;

  // @override
  // void initState() {
  //   _isLoading = true;
  //   Future.delayed(const Duration(milliseconds: 1100), () {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Center(
            child: Text(
          'All Categories',
          style: TextStyle(color: Colors.white, fontSize: 21),
        )),
        leading: InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/', ModalRoute.withName('/Home'));
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child:  Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly, //1st Row
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 0, left: 0, top: 0, bottom: 0),
                                    height: 250,
                                    width: 360,
                                    decoration: BoxDecoration(
                                      //OutlineInputBorder ,
                                      // color: Colors.purple[50],
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
                                        //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                        // child: Container(
                                        //   alignment: Alignment.centerLeft,
                                        //   child: const Text(
                                        //     'Frutis & Vegetables',
                                        //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                        //   ),
                                        // ),

                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FruitsAndVegitables()));
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(3),
                                            child: Image.asset(
                                              "Assets/Images/CategoriesImages/Fruits&Vegitables.jpg",
                                              // width: 120,
                                              // height: 73,
                                              fit: BoxFit.contain,
                                            ),
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
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 0, left: 0, top: 0, bottom: 0),
                                height: 250,
                                width: 360,
                                decoration: BoxDecoration(
                                  //OutlineInputBorder ,
                                  // color: Colors.purple[50],
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
                                    //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                    // child: Container(
                                    //   alignment: Alignment.centerLeft,
                                    //   child: const Text(
                                    //     'Atta, Rice, Oils & Dals',
                                    //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color:  Colors.deepPurple),
                                    //   ),
                                    // ),

                                    // ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: const EdgeInsets.all(3),
                                        child: Image.asset(
                                            "Assets/Images/CategoriesImages/Atta.png",
                                            // width: 120,
                                            // height: 73,
                                            fit: BoxFit.contain),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly, //2nd Row
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
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
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Sweet\nCravings',
                                      //     style: TextStyle(fontSize: 9.6, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/sweet.png",
                                          // width: 70,
                                          // height: 60,
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
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
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //   Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      //   child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Frozen Food & Ice Creams',
                                      //     style: TextStyle(fontSize: 9.6, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),
                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          margin: const EdgeInsets.all(2),
                                          child: Image.asset(
                                            "Assets/Images/CategoriesImages/FrozenFood.png",
                                            // width: 64,
                                            // height: 45,
                                            fit: BoxFit.contain,
                                          ),
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 0, left: 0, top: 0, bottom: 0),
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
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      // child: Container(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: const Text(
                                      //     'Packaged\nFood',
                                      //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                      //   ),
                                      // ),

                                      // ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "Assets/Images/CategoriesImages/packeged.png",
                                          // width: 64,
                                          // height: 65,
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
                                //   //child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                // ),
                                // Container(
                                //   margin: const EdgeInsets.only(right: 4, left: 4, top: 0, bottom: 12),
                                //    height: 140,
                                //   width: 90,
                                //   decoration: BoxDecoration(
                                //       //OutlineInputBorder ,
                                //       color: Colors.purple[50],
                                //     borderRadius: BorderRadius.circular(15.0),
                                //   ),
                                //  // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        //3rd Row
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 0, left: 0, top: 0, bottom: 0),
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // child: Container(
                                //   alignment: Alignment.centerRight,
                                //   child: const Text(
                                //     'Dairy,Bread\n&Eggs',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),
                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.all(0),
                                    child: Image.asset(
                                      "Assets/Images/CategoriesImages/DairyBread.png",
                                      // width: 64,
                                      // height: 65,
                                      fit: BoxFit.contain,
                                    ),
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // child: Container(
                                //   alignment: Alignment.centerLeft,
                                //   child: const Text(
                                //     'Cold Drinks\n&Juices',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                //),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                    // width: 64,
                                    // height: 65,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                // child: Container(
                                //   alignment: Alignment.center,
                                //   child: const Text(
                                //     'Cleaning Essentials',
                                //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/MUN.png",
                                    // width: 64,
                                    // height: 65,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // child: Container(
                                //   alignment: Alignment.centerLeft,
                                //   child: const Text(
                                //     'Masala & Dry Fruits',
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/meat.png",
                                    // width: 64,
                                    // height: 45,
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
                        //4th Row
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 0, left: 0, top: 0, bottom: 0),
                            height: 240,
                            width: 165,
                            decoration: BoxDecoration(
                              //OutlineInputBorder ,
                              // color: Colors.purple[50],
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
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),
                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/BreakFast.png",
                                    // width: 64,
                                    // height: 45,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // // child: Container(
                                // //   alignment: Alignment.centerLeft,
                                // //   child: const Text(
                                // //     'Masala & Dry Fruits',
                                // //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                // //   ),
                                // // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/tea.png",
                                    // width: 64,
                                    // height: 45,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // // child: Container(
                                // //   alignment: Alignment.centerLeft,
                                // //   child: const Text(
                                // //     'Masala & Dry Fruits',
                                // //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                // //   ),
                                // // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/Biscuits.png",
                                    // width: 64,
                                    // height: 45,
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                // child: Container(
                                //   alignment: Alignment.centerLeft,
                                //   child: const Text(
                                //     'Masala & Dry Fruits',
                                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                //   ),
                                // ),

                                // ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "Assets/Images/CategoriesImages/makeup.png",
                                    // width: 64,
                                    // height: 45,
                                    fit: BoxFit.contain,
                                  ),
                                ),

                                // const Row(
                                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                //   ],
                                // ),
                              ],
                            ),

                            // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              'Explore New Categories',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // Meats Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              height: 240,
                              width: 165,
                              decoration: BoxDecoration(
                                //OutlineInputBorder ,
                                //color: Colors.purple[50],
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 0,
                                    blurRadius: 120,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/SeaFood.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // KitchenSections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/KitchenNeeds.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // PetCareSections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/petcare.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // PartyEssentials
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/PartyEssential.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // Fitness Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/Fitness.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // OrganicFood Secions
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/OrganicFood.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                              // BabyCare Sections
                              margin: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  // child: Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: const Text(
                                  //     'Dairy,Bread\n&Eggs',
                                  //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                  //   ),
                                  // ),
                                  // ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.all(0),
                                      child: Image.asset(
                                        "Assets/Images/babyCare.png",
                                        // width: 64,
                                        // height: 65,
                                        fit: BoxFit.contain,
                                      ),
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
                            //const SizedBox(height: 20,),
                          ],
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
