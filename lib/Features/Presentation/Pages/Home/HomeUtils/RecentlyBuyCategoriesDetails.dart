import 'package:flutter/material.dart';

class RecentlyByCategoriesDetails extends StatefulWidget {
  const RecentlyByCategoriesDetails({super.key});

  @override
  State<RecentlyByCategoriesDetails> createState() =>
      _RecentlyByCategoriesDetailsState();
}

class _RecentlyByCategoriesDetailsState
    extends State<RecentlyByCategoriesDetails> {
  @override
  Widget build(BuildContext context) {
    bool isButtonTapped = false;

    void _TapButtonState() {
      setState(() {
        isButtonTapped = !isButtonTapped;
      });
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 278,
              width: 194,
              padding: const EdgeInsets.only(left: 0, right: 15, top: 0),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "Assets/Images/RecentlyBuy/anandcow.png",
                        width: 100,
                        height: 115,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Column(
                            children: [
                              Text(
                                "\u{20B9}${100}",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "\u{20B9}${77}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 13),
                          child: SizedBox(
                            width: 72,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFFDF2C25)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                  child: InkWell(
                                onTap: () {
                                  _TapButtonState();
                                },
                                child: const Column(
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
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
              width: 20,
            ),
            Container(
              height: 278,
              width: 194,
              padding: const EdgeInsets.only(left: 0, right: 15, top: 0),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "Assets/Images/ccmh.png",
                        width: 100,
                        height: 115,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Column(
                            children: [
                              Text(
                                "\u{20B9}${100}",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "\u{20B9}${77}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 13),
                          child: SizedBox(
                            width: 72,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFFDF2C25)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                  child: InkWell(
                                onTap: () {
                                  _TapButtonState();
                                },
                                child: const Column(
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
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
              width: 20,
            ),
            Container(
              height: 278,
              width: 194,
              padding: const EdgeInsets.only(left: 0, right: 15, top: 0),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "Assets/Images/chickoo.png",
                        width: 100,
                        height: 115,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Column(
                            children: [
                              Text(
                                "\u{20B9}${100}",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "\u{20B9}${77}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 13),
                          child: SizedBox(
                            width: 72,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFFDF2C25)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                  child: InkWell(
                                onTap: () {
                                  _TapButtonState();
                                },
                                child: const Column(
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
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
              width: 20,
            ),
            Container(
              height: 278,
              width: 194,
              padding: const EdgeInsets.only(left: 0, right: 15, top: 0),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "Assets/Images/RecentlyBuy/anandcow.png",
                        width: 100,
                        height: 115,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Column(
                            children: [
                              Text(
                                "\u{20B9}${100}",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text(
                                  "\u{20B9}${77}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 13),
                          child: SizedBox(
                            width: 72,
                            height: 40,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFFDF2C25)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                  child: InkWell(
                                onTap: () {
                                  _TapButtonState();
                                },
                                child: const Column(
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
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
    );
  }
}
