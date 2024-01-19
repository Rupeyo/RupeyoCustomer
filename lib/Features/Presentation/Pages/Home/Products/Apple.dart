import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddButtonWithCounter.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Products/CartItemModelSheet.dart';
import 'package:rupiyo/Features/Presentation/Widgets/AddItem.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ProductAppBar.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ProductItemSamples.dart';

class AppleInfo extends StatefulWidget {
  const AppleInfo({super.key});

  @override
  State<AppleInfo> createState() => _AppleInfoState();
}

class _AppleInfoState extends State<AppleInfo> {
  bool _isClicked = false;
  int productPrice = 216;
  int expandedColumnIndex = -1;

  void toggleExpansion(int index) {
    setState(() {
      if (expandedColumnIndex == index) {
        expandedColumnIndex = -1; // Collapse the expanded column
      } else {
        expandedColumnIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0XFFDF2C25),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const ProductAppBar(),
          Container(
            color: const Color(0XFFEDECF2),
            child: Column(
              children: [
                const AppleImage(),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Text(
                          'Apple Royal Gala Indian',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '4 pcs (Approx. 450g - 550g)',
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 12),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: AddButtonWithCounter(),
                          ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "\u{20B9}${247}",
                                  style: const TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "\u{20B9}${208}",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13,
                                      color: Colors.grey.shade400),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 72,
                                  height: 30,
                                  padding: const EdgeInsets.only(left: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFDF2C25),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                        topLeft: Radius.circular(5)),
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
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //Divider(indent: 0,),
                        Container(
                          height: 1,
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 10),
                          color: const Color(0XFFe2e2e2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 0),
                          child: Column(
                            children: [
                              const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Combo Details'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 90,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Image.asset(
                                        'Assets/Images/apple.png',
                                        fit: BoxFit.contain,
                                        width: 60,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 12),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Apple Royal Gala Indian',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text('4 pcs (Approx. 450g - 550g)',
                                          textAlign: TextAlign.start,
                                              style: TextStyle(fontSize: 9))
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              const Text(
                                                "\u{20B9}${216}",
                                                style: TextStyle(fontSize: 17),
                                              ),
                                              Text(
                                                "\u{20B9}${270}",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color:
                                                        Colors.grey.shade500),
                                              )
                                            ],
                                          )
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
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  color: Colors.white,
                  child: const ExpansionTile(
                    title: Text(
                      'Product Infromation',
                      style: TextStyle(fontSize: 16),
                    ),
                    children: [
                      ListTile(
                        title: Text(
                          'The Water OF Tender Coconut Is nothing but The Endosperm of the cocount and it is one of the most nutritous water is what matures and forms the flesh of the coconut overtime.',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w100,
                              wordSpacing: 0.6),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Text(
                              'Similar Products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/Cabbage.jpeg",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
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
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Text(
                              'You Might Also Like',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
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
                                width: 14,
                              ),
                              Container(
                                height: 250,
                                width: 200,
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
                                          width: 88,
                                          height: 30,
                                          padding:
                                              const EdgeInsets.only(left: 0),
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
                                            alignment: Alignment.center,
                                            child: Text(
                                              "5% Off",
                                              style: TextStyle(
                                                fontSize: 16,
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
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          "Assets/Images/ccnt.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Tender Coconut',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                            '1pc(Min. 250ml water).Qty:3',
                                            style: TextStyle(fontSize: 10)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 0, right: 2),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "\u{20B9}${79}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${66}",
                                                    style: TextStyle(
                                                        fontSize: 19,
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
                                                left: 5, top: 0),
                                            child: SizedBox(
                                              width: 72,
                                              height: 40,
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
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void handleTap() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }
}
