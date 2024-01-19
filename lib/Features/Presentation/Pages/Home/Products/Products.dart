import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Cart/Cart.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddButtonWithCounter.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Products/CartItemModelSheet.dart';
import 'package:rupiyo/Features/Presentation/Widgets/AddItem.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ProductAppBar.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ProductItemSamples.dart';
import 'package:rupiyo/theme/Colors.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
//Variables For Animated Container And Expanded Column
  bool isContainerVisible = false;
  int expandedColumnIndex = -1;
// Variable Ends Here

  // Toggle Function For Column Expenasion.
  void toggleExpansion(int index) {
    setState(() {
      if (expandedColumnIndex == index) {
        expandedColumnIndex = -1; // Collapse the expanded column
      } else {
        expandedColumnIndex = index;
      }
    });
  }
// End Here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Animated Bottom Sheet
      bottomSheet: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        height: isContainerVisible ? 70.0 : 0.0,
        child: Container(
          height: 50,
          color: ColorsField.MainColor,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Items | ₹456',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    children: [
                      Icon(
                        CupertinoIcons.bag,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'View Cart',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      //Animated Container Bottom Sheet Ends Here

      //App Bar top
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0XFFDF2C25),
      ),
      //Ends Here

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Product App Bar
          const ProductAppBar(),
          //Ends Here

          Container(
            color: const Color(0XFFEDECF2),
            child: Column(
              children: [
                const ProductItemSamples(),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Text(
                          'Tender Coconut',
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
                                '3pc',
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
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
                                  "\u{20B9}216",
                                  style: const TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "\u{20B9}${270}",
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
                                        'Assets/Images/ccnt.png',
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
                                            'Tender Coconut',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text('1pc(Min. 250ml water).Qty:3',
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

  void _toggleBottomContainer() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }
}

class Kiwi extends StatefulWidget {
  const Kiwi({super.key});

  @override
  State<Kiwi> createState() => _KiwiState();
}

class _KiwiState extends State<Kiwi> {
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
                const KiwiImage(),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Text(
                          'Kiwi Green Semi Ripe',
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
                                '3 pcs (Approx. 250g - 300g)',
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: (_isClicked == false)
                                    ? ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0XFFDF2C25),
                                          foregroundColor: Colors.white,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        onPressed: () {
                                          handleTap();
                                          showModalBottomSheet(
                                            backgroundColor:
                                                const Color(0XFFDF2C25),
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const CartItemsModelBottomSheet();
                                            },
                                          );
                                          //showCartDialog(context);
                                        },
                                        child: const Text(
                                          'Add',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      )
                                    : const AddItemCount(),
                              ),
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
                                const Text(
                                  "\u{20B9}${190}",
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "\u{20B9}${160}",
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
                                        'Assets/Images/kiwi.png',
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
                                            'Assets/Images/kiwi.png',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text('3 pcs (Approx. 250g - 300g)',
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
                                                "\u{20B9}${190}",
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
                          'The kiwifruit possesses properties that lower blood pressure. By The kiwifruit possesses properties that lower blood pressure. By helping to maintain a healthy blood pressure and providing a boost of Vitamin C, the kiwifruit can reduce the risk of stroke and heart disease. Beyond this, kiwi also contains a high level of dietary fiber.helping to maintain a healthy blood pressure and providing a boost of Vitamin C, the kiwifruit can reduce the risk of stroke and heart disease. Beyond this, kiwi also contains a high level of dietary fiber.',
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
                                          "Assets/Images/apple.png",
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
                                          'Apple Royal Gala Indian',
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
                                            '4 pcs (Approx. 450g - 550g)',
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
                                                  "\u{20B9}${216}",
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
                                                    "\u{20B9}${270}",
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
                                          "Assets/Images/chickoo.png",
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
                                          'Chikoo',
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
                                        child: const Text('550g',
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
                                                  "\u{20B9}${71}",
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
                                                    "\u{20B9}${59}",
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
                                          "Assets/Images/Banana.png",
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
                                          'Banana Robusta Semi Ripe',
                                          maxLines: 1,
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
                                        child: const Text('500 g',
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
                                                  padding: EdgeInsets.only(
                                                    left: 10,
                                                    right: 15,
                                                    top: 0,
                                                    bottom: 0,
                                                  ),
                                                  child: Text(
                                                    "\u{20B9}${65}",
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
