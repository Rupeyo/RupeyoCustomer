import 'package:flutter/material.dart';

class OurTopSellerDetails extends StatelessWidget {
  const OurTopSellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 280,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0XFFe8e8e8), width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset('Assets/Images/dmart.jpg',
                            height: 203, width: 98, fit: BoxFit.cover),
                        // Placeholder(
                        // ), //use your image
                        const Positioned(
                          top: 2,
                          left: 1,
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.favorite,
                                color: Color(0XFFDF2C25),
                              )),
                        ),
                        const Align(
                          //you can use the Positioned widget here
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Flat 150',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28),
                                  child: Text(
                                    'OFF',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 0),
                  const Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 59, top: 5),
                        child: Text(
                          'Lorem ipsum\ndolor sit amet,\nconsectetur',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5, right: 116),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0XFFDF2C25),
                            ),
                            Text(
                              '3 Km',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 120,
              width: 280,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0XFFe8e8e8), width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset('Assets/Images/bakery.jpg',
                            height: 203, width: 98, fit: BoxFit.cover),
                        // Placeholder(
                        // ), //use your image
                        const Positioned(
                          top: 2,
                          left: 1,
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.favorite,
                                color: Color(0XFFDF2C25),
                              )),
                        ),
                        const Align(
                          //you can use the Positioned widget here
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Flat 150',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28),
                                  child: Text(
                                    'OFF',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 0),
                  const Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 59, top: 5),
                        child: Text(
                          'Lorem ipsum\ndolor sit amet,\nconsectetur',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5, right: 116),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0XFFDF2C25),
                            ),
                            Text(
                              '3 Km',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 120,
              width: 280,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0XFFe8e8e8), width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset('Assets/Images/shoeshop.jpg',
                            height: 203, width: 98, fit: BoxFit.cover),
                        // Placeholder(
                        // ), //use your image
                        const Positioned(
                          top: 2,
                          left: 1,
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              )),
                        ),
                        const Align(
                          //you can use the Positioned widget here
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Flat 150',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28),
                                  child: Text(
                                    'OFF',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 0),
                  const Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 59, top: 5),
                        child: Text(
                          'Lorem ipsum\ndolor sit amet,\nconsectetur',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5, right: 116),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0XFFDF2C25),
                            ),
                            Text(
                              '3 Km',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
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
