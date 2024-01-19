import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Products/Products.dart';

class ResponsiveContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Get the screen width
          double screenWidth = MediaQuery.of(context).size.width;

          // Set a breakpoint for when to switch from row to column
          double breakpoint = 600;

          // Adjust the layout based on the screen width
          if (screenWidth > breakpoint) {
            // If the screen is wider than the breakpoint, use a row
            return ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      Container(
                        height: 280,
                        width: 170,
                        padding:
                            const EdgeInsets.only(left: 0, right: 15, top: 0),
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
                                  padding: const EdgeInsets.only(left: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFDF2C25),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(20),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductInfo()));
                              },
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    "Assets/Images/apple.png",
                                    width: 112,
                                    height: 107,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 3, left: 13),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Apple Royal Gala Indian',
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
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                '4 pcs (Approx. 450g - 550g)',
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Column(
                                      children: [
                                        Text(
                                          "\u{20B9}${247}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "\u{20B9}${208}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 16),
                                    child: SizedBox(
                                      width: 60,
                                      height: 35,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0XFFDF2C25)),
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
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0XFFDF2C25)),
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
                        width: 10,
                      ),
                      Container(
                        height: 280,
                        width: 170,
                        padding:
                            const EdgeInsets.only(left: 0, right: 15, top: 0),
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
                                  padding: const EdgeInsets.only(left: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFDF2C25),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "20% Off",
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductInfo()));
                              },
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    "Assets/Images/ccnt.png",
                                    width: 112,
                                    height: 107,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 23, left: 13),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  'Tender Cocount',
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
                              padding: EdgeInsets.only(right: 120),
                              child: Text(
                                '3pc',
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
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
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "\u{20B9}${204}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 16),
                                    child: SizedBox(
                                      width: 60,
                                      height: 35,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0XFFDF2C25)),
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
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0XFFDF2C25)),
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
                        width: 10,
                      ),
                      Container(
                        height: 280,
                        width: 170,
                        padding:
                            const EdgeInsets.only(left: 0, right: 15, top: 0),
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
                                  padding: const EdgeInsets.only(left: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFDF2C25),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "20% Off",
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductInfo()));
                              },
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    "Assets/Images/ccnt.png",
                                    width: 112,
                                    height: 107,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 23, left: 13),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  'Tender Cocount',
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
                              padding: EdgeInsets.only(right: 120),
                              child: Text(
                                '3pc',
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
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
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "\u{20B9}${204}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 16),
                                    child: SizedBox(
                                      width: 60,
                                      height: 35,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0XFFDF2C25)),
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
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0XFFDF2C25)),
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
                        width: 10,
                      ),
                      Container(
                        height: 280,
                        width: 170,
                        padding:
                            const EdgeInsets.only(left: 0, right: 15, top: 0),
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
                                  padding: const EdgeInsets.only(left: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFDF2C25),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(20),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "20% Off",
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductInfo()));
                              },
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    "Assets/Images/ccnt.png",
                                    width: 112,
                                    height: 107,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 23, left: 13),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: const Text(
                                  'Tender Cocount',
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
                              padding: EdgeInsets.only(right: 120),
                              child: Text(
                                '3pc',
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
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
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "\u{20B9}${204}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 16),
                                    child: SizedBox(
                                      width: 60,
                                      height: 35,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0XFFDF2C25)),
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
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0XFFDF2C25)),
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
              ],
            );
          } else {
            // If the screen is narrower than the breakpoint, use a column
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView(scrollDirection: Axis.vertical, children: [
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/apple.png",
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
                                      'Apple Royal Gala Indian',
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
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    '4 pcs (Approx. 450g - 550g)',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Column(
                                          children: [
                                            Text(
                                              "\u{20B9}${247}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "\u{20B9}${208}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(10)),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "20% Off",
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/ccnt.png",
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
                                    alignment: Alignment.bottomCenter,
                                    child: const Text(
                                      'Tender Cocount',
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
                                  padding: EdgeInsets.only(right: 120),
                                  child: Text(
                                    '3pc',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
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
                                                  fontWeight: FontWeight.w500,
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
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/apple.png",
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
                                      'Apple Royal Gala Indian',
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
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    '4 pcs (Approx. 450g - 550g)',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Column(
                                          children: [
                                            Text(
                                              "\u{20B9}${247}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "\u{20B9}${208}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                            width: 10,
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(10)),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "20% Off",
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/ccnt.png",
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
                                    alignment: Alignment.bottomCenter,
                                    child: const Text(
                                      'Tender Cocount',
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
                                  padding: EdgeInsets.only(right: 120),
                                  child: Text(
                                    '3pc',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
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
                                                  fontWeight: FontWeight.w500,
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
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/apple.png",
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
                                      'Apple Royal Gala Indian',
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
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    '4 pcs (Approx. 450g - 550g)',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Column(
                                          children: [
                                            Text(
                                              "\u{20B9}${247}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "\u{20B9}${208}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                            width: 10,
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
                                      padding: const EdgeInsets.only(left: 12),
                                      decoration: const BoxDecoration(
                                        color: Color(0XFFDF2C25),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(10)),
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "20% Off",
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductInfo()));
                                  },
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "Assets/Images/ccnt.png",
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
                                    alignment: Alignment.bottomCenter,
                                    child: const Text(
                                      'Tender Cocount',
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
                                  padding: EdgeInsets.only(right: 120),
                                  child: Text(
                                    '3pc',
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
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
                                                  fontWeight: FontWeight.w500,
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
                                                    fontWeight: FontWeight.w500,
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
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0XFFDF2C25)),
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
                                                        color:
                                                            Color(0XFFDF2C25)),
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
                  ],
                ),
              ]),
            );
          }
        },
      ),
    );
  }
}
