import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: const Color(0XFFDF2C25),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(CupertinoIcons.back, color: Colors.white)),
        title: const Text(
          'Customer Support & FAQs',
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: 380,
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'FAQs',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coupans & Offers',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Color(0XFFDF2C25),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'General Inquiry',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Color(0XFFDF2C25),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Related',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Color(0XFFDF2C25),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Feedback & Suggestions',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Color(0XFFDF2C25),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order / Products Related',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Color(0XFFDF2C25),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
