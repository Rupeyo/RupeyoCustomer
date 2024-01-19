import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Center(
          child: Text(
            'My WishList',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Card(
        color: Colors.white,
        elevation: 0,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 23),
          child: Container(
            height: 50,
            margin: const EdgeInsets.all(24),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 13,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Proceed To Checkout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 120,
                      width: 310,
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
                                    width: MediaQuery.of(context).size.width,
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
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.trash_fill,
                          color: Colors.red,
                          size: 28,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 120,
                      width: 310,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Image.asset('Assets/Images/dmart.jpg',
                                    height: 203,
                                    width: MediaQuery.of(context).size.width,
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
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.trash_fill,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
