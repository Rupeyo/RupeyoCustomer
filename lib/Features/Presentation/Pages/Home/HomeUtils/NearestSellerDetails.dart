// ignore: file_names
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSellerPage.dart';

class NearestSellerDetails extends StatelessWidget {
  const NearestSellerDetails({super.key});

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

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NearestSellerPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 380,
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
                              border: Border.all(
                                  color: const Color(0XFFe8e8e8), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Image.asset('Assets/Images/dmart.jpg',
                                          height: 203,
                                          width: 190,
                                          fit: BoxFit.cover),
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
                                          ),
                                        ),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 28),
                                                child: Text(
                                                  'OFF',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 59, top: 5),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 116),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFFDF2C25),
                                          ),
                                          Text(
                                            '3 Km',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ), //Container 1
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 120,
                            width: 380,
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
                              border: Border.all(
                                  color: const Color(0XFFe8e8e8), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Image.asset('Assets/Images/bakery.jpg',
                                          height: 203,
                                          width: 190,
                                          fit: BoxFit.cover),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 28),
                                                child: Text(
                                                  'OFF',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal),
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
                                      padding:
                                          EdgeInsets.only(right: 59, top: 5),
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 116),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFFDF2C25),
                                          ),
                                          Text(
                                            '3 Km',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NearestSellerPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 380,
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
                              border: Border.all(
                                  color: const Color(0XFFe8e8e8), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Image.asset('Assets/Images/dmart.jpg',
                                          height: 203,
                                          width: 190,
                                          fit: BoxFit.cover),
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
                                          ),
                                        ),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 28),
                                                child: Text(
                                                  'OFF',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 59, top: 5),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 116),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFFDF2C25),
                                          ),
                                          Text(
                                            '3 Km',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ), //Container 1
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 120,
                            width: 380,
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
                              border: Border.all(
                                  color: const Color(0XFFe8e8e8), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Image.asset('Assets/Images/bakery.jpg',
                                          height: 203,
                                          width: 190,
                                          fit: BoxFit.cover),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 28),
                                                child: Text(
                                                  'OFF',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal),
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
                                      padding:
                                          EdgeInsets.only(right: 59, top: 5),
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 116),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFFDF2C25),
                                          ),
                                          Text(
                                            '3 Km',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NearestSellerPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          border: Border.all(
                              color: const Color(0XFFe8e8e8), width: 1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 200,
                                    decoration:  BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'Assets/Images/dmart.jpg',
                                          ),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken,)),
                                    ),
                                  ),
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
                                      ),
                                    ),
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
                                                  fontWeight:
                                                      FontWeight.normal),
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
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 5, right: 116),
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
                      ), //Container 1
                      const SizedBox(
                        width: 12,
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
                          border: Border.all(
                              color: const Color(0XFFe8e8e8), width: 1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 200,
                                    decoration:  BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'Assets/Images/bakery.jpg',
                                          ),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken,)),
                                    ),
                                  ),
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
                                      ),
                                    ),
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
                                                  fontWeight:
                                                      FontWeight.normal),
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
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 5, right: 116),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0, top: 0),
                            child: Container(
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
                          border: Border.all(
                              color: const Color(0XFFe8e8e8), width: 1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 200,
                                    decoration:  BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'Assets/Images/dmart.jpg',
                                          ),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken,)),
                                    ),
                                  ),
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
                                      ),
                                    ),
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
                                                  fontWeight:
                                                      FontWeight.normal),
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
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 5, right: 116),
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
                          ),
                          const SizedBox(
                            width: 10,
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
                              border: Border.all(
                                  color: const Color(0XFFe8e8e8), width: 1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Image.asset('Assets/Images/dmart.jpg',
                                          height: 203,
                                          width: 98,
                                          fit: BoxFit.cover),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 28),
                                                child: Text(
                                                  'OFF',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.normal),
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
                                      padding:
                                          EdgeInsets.only(right: 59, top: 5),
                                      child: Text(
                                        'Lorem ipsum\ndolor sit amet,\nconsectetur',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5, right: 116),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFFDF2C25),
                                          ),
                                          Text(
                                            '3 Km',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
