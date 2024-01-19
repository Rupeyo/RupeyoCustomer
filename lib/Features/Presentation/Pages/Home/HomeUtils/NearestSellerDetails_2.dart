import 'package:flutter/material.dart';

class NearestSellerD2 extends StatefulWidget {
  const NearestSellerD2({super.key});

  @override
  State<NearestSellerD2> createState() => _NearestSellerD2State();
}

class _NearestSellerD2State extends State<NearestSellerD2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110,
        width: 355,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 27.0,
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
                  Image.asset(
                    'Assets/Images/dmart.jpg',
                    fit: BoxFit.cover,
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
                          color: Colors.red,
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
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Lorem ipsum\n dolor sit amet, \n consectetur',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            '3 Km',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
