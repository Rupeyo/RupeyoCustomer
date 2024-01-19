// ignore: file_names
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Widgets/CategoriesLoader.dart';

class FreshVegitableItems extends StatefulWidget {
  const FreshVegitableItems({super.key});

  @override
  State<FreshVegitableItems> createState() => _FreshVegitableItemsState();
}

class _FreshVegitableItemsState extends State<FreshVegitableItems> {
  late bool _isLoading;
  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  int current = 0;
  //final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _isLoading == true
            ? const Center(child: CategoriesLoader())
            : Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                  children: [
                      const Column(
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 20),
                          //   child: CarouselSlider(
                          //     items: imageSliders,
                          //     carouselController: _controller,
                          //     options: CarouselOptions(
                          //         height: MediaQuery.of(context).size.height / 3.9,
                          //         viewportFraction: 0.80,
                          //         autoPlay: true,
                          //         autoPlayInterval: const Duration(seconds: 3),
                          //         enlargeCenterPage: true,
                          //         aspectRatio: 3.0,
                          //         onPageChanged: (index, reason) {
                          //           setState(() {
                          //             current = index;
                          //           });
                          //         }),
                          //   ),
                          // ),

                          // Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // children: imgList.asMap().entries.map((entry) {
                          //   return GestureDetector(
                          //     onTap: () => _controller.animateToPage(entry.key),
                          //     child: Container(
                          //       width: 8.0,
                          //       height: 8.0,
                          //       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(10),
                          //           color: (Theme.of(context).brightness == Brightness.dark
                          //                   ? Colors.white
                          //                   : const Color(0XFFDF2C25))
                          //               .withOpacity(current == entry.key ? 0.9 : 0.4)),
                          //     ),
                          //   );
                          // }).toList(),
                          //     ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "19% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/DT.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tomato Desi',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 100),
                                      child: Text(
                                        '2 Kg',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${92}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${74}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/caulif.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 23, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Cauliflower',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Text(
                                        '1 pc (Approx. 400g - 600g)',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${255}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${204}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       left: 5, top: 16),
                                          //   child: SizedBox(
                                          //     width: 60,
                                          //     height: 35,
                                          //     child: Container(
                                          //       padding:
                                          //           const EdgeInsets.all(5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border.all(
                                          //             color: const Color(
                                          //                 0XFFDF2C25)),
                                          //         color: Colors.white,
                                          //         borderRadius:
                                          //             BorderRadius.circular(6),
                                          //       ),
                                          //       child: Center(
                                          //           child: InkWell(
                                          //         onTap: () {
                                          //           //_TapButtonState();
                                          //         },
                                          //         child: const Column(
                                          //           children: [
                                          //             Text(
                                          //               'Add',
                                          //               style: TextStyle(
                                          //                   fontSize: 15,
                                          //                   fontWeight:
                                          //                       FontWeight.w500,
                                          //                   color: Color(
                                          //                       0XFFDF2C25)),
                                          //             ),
                                          //           ],
                                          //         ),
                                          //       )),
                                          //     ),
                                          //     //child: Icon(CupertinoIcon),
                                          //   ),
                                          // ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/peas.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Green Peas',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 103),
                                      child: Text(
                                        '250g',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${78}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${65}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "13% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/LF.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Ladies Finger Combo',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 100),
                                      child: Text(
                                        '500 g',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${30}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${26}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "15% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/chipsona.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Potato Chipsona',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 115),
                                      child: Text(
                                        '1kg',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${60}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${50}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/ccmh.png",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Cucumber Hybrid ',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 100),
                                      child: Text(
                                        '100g',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${60}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${56}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/capsicum.jpeg",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Capsicum Yellow',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 76),
                                      child: Text(
                                        '100 - 150 g',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${52}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${62}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                    child: InkWell(
                                                  onTap: () {
                                                    //_TapButtonState();
                                                  },
                                                  child: const Column(
                                                    children: [
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0XFFDF2C25)),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),

                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 280,
                                width: 170,
                                padding: const EdgeInsets.only(
                                    left: 0, right: 15, top: 0),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 72,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          decoration: const BoxDecoration(
                                            color: Color(0XFFDF2C25),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(10)),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "16% Off",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "Assets/Images/Cabbage.jpeg",
                                            width: 112,
                                            height: 107,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3, left: 13),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Cabbage',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 0),
                                      child: Text(
                                        '1 pc (Approx. 500g - 800g)',
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(right: 1),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${55}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "\u{20B9}${46}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 16),
                                            child: SizedBox(
                                              width: 60,
                                              height: 35,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0XFFDF2C25)),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      //_TapButtonState();
                                                    },
                                                    child: const Column(
                                                      children: [
                                                        Text(
                                                          'Add',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0XFFDF2C25)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              //child: Icon(CupertinoIcon),
                                            ),
                                          ),
                                          //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
    );
  }
}

final List<String> imgList = [
  'https://cdn.zeptonow.com/production///tr:w-640,ar-969-501,pr-true,f-webp,q-80/inventory/banner/45781e43-8bb9-4179-9cd4-651625c088b5-Banner_Carousel_Mega_Meat_Sale_copy_4.png',
  'https://cdn.zeptonow.com/production///tr:w-640,ar-969-501,pr-true,f-webp,q-80/inventory/banner/be7438a7-0f37-4055-989a-167ec4118493-BANNER_CAROUSEL_WITHOUT_TITLE_1_-_Jay_Dhulap.png',
  // 'Assets/Images/banner3.png',
  // 'Assets/Images/banner4.png',
  // 'Assets/Images/banner5.png',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(0.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.contain, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                        //     gradient: LinearGradient(
                        //     colors: [
                        //     Color.fromARGB(200, 0, 0, 0),
                        //     Color.fromARGB(0, 0, 0, 0)
                        //   ],
                        //   begin: Alignment.bottomCenter,
                        //   end: Alignment.topCenter,
                        // ),
                        ),
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 0.0, horizontal: 6.0),
                    //  child: Text(
                    //  'No. ${imgList.indexOf(item)} image',
                    //   style: const TextStyle(
                    //   color: Colors.white,
                    //   fontSize: 20.0,
                    //   fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ),
                ),
              ],
            )),
      ),
    )
    .toList();
