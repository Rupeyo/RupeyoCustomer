import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddressInformation.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ProfileAdd.dart';
import 'package:rupiyo/Features/Presentation/Widgets/CustomerSuppport.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        backgroundColor: const Color(0XFFDF2C25),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(CupertinoIcons.back, color: Colors.white)),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // --------------- Upper Section Starts Here --------------------------//

                  const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.bag,
                          color: Color(0XFFDF2C25),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Orders'),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.forward,
                              color: Color(0XFFDF2C25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //Order Row.
                  const Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CustomerSupport()));
                      },
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_2,
                            color: Color(0XFFDF2C25),
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Customer Support & FAQ',
                            maxLines: 2,
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.forward,
                                color: Color(0XFFDF2C25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), //Customer Support Row.
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddressInformation()));
                      },
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.placemark,
                            color: Color(0XFFDF2C25),
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Addresses'),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.forward,
                                color: Color(0XFFDF2C25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), //Addresses
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.arrow_clockwise_circle,
                          color: Color(0XFFDF2C25),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Refunds'),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.forward,
                              color: Color(0XFFDF2C25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //Refunds
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileDetails()));
                      },
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.person_crop_circle,
                            color: Color(0XFFDF2C25),
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Profile'),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.forward,
                                color: Color(0XFFDF2C25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), //Profile
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.checkmark_seal,
                          color: Color(0XFFDF2C25),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('SuggestProducts'),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.forward,
                              color: Color(0XFFDF2C25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //Suggest Products
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.exclamationmark_circle,
                          color: Color(0XFFDF2C25),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('General Info'),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.forward,
                              color: Color(0XFFDF2C25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //General Info
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.bell,
                          color: Color(0XFFDF2C25),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Notifications'),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.forward,
                              color: Color(0XFFDF2C25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //Notifications.
                  const Divider(),

                  // ---------- Upper Section Ends Here --------------------------//

                  //------------ LogOut Button Section Starts Here ----------------//
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 140,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 9,
                                backgroundColor: const Color(0XFFDF2C25),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //------------ LogOut Button Section Ends Here ----------------//

                  //----Crewman Text ----//
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                    maxLines: 1,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Powered By',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Crewman Solution Private Limited',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFFDF2C25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //----Crewman Text Ends here ----//
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
