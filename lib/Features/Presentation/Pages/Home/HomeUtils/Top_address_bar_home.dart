import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddressInformation.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Profile.dart';

class TopAdress extends StatefulWidget {
  const TopAdress({super.key});

  @override
  State<TopAdress> createState() => _TopAdressState();
}

class _TopAdressState extends State<TopAdress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            const Icon(
              CupertinoIcons.location_solid,
              // Icons.location_on_sharp,
              color: Color(0XFFDF2C25), size: 33,
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'DELIVERY IN',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Work - ",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              //textAlign: TextAlign.center,
                            ),

                            //Spacer(),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddressInformation()));
                              },
                              child: const Text(
                                "H Block , 211, First Floor, H Block",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Text(
                  //   'Work',
                  //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 45),
                  //   child: Text(
                  //     '- H Block , 211, First Floor, H Block',
                  //       style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  //   ),
                  // ),
                ],
              ),
            ),
            
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileSection()));
              },
              child: const Icon(
                CupertinoIcons.person,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
