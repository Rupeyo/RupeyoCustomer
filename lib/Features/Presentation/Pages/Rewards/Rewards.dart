import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFDF2C25),
        toolbarHeight: 80,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SecondBottomBar');
            },
            child: const Icon(
              CupertinoIcons.back,
              color: Colors.white,
              size: 27,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18, top: 20),
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.doc_chart_fill,
                  color: Colors.white,
                ),
                Text(
                  'History',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: const BoxDecoration(
                color: Color(0XFFDF2C25),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.creditcard,
                              size: 45,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Wallet Balance',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '₹0',
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black38,
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3))
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wallet',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    '₹0',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black38,
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3))
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wallet(Rewards)',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '₹0',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      'Have a Coupon Code?',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today's Task",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '1/2',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 120,
                                height: 60,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 3))
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white),
                                child: const Image(
                                  image: AssetImage('Assets/Images/refer.jpg'),
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            _showDialogReferal(context);
                          },
                          child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(0, 3))
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0XFFDF2C25)),
                              child: const Center(
                                  child: Text(
                                'Refer And Earn Reward Points',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 120,
                                height: 70,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 3))
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white),
                                child: const Image(
                                  image:
                                      AssetImage('Assets/Images/BuyReward.jpg'),
                                  fit: BoxFit.fitWidth,
                                )),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            _RewardsOnFirstPurchase(context);
                          },
                          child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(0, 3))
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0XFFDF2C25)),
                              child: const Center(
                                  child: Text(
                                'Get Rewards Points On Your First Purchase',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                                textAlign: TextAlign.center,
                              ))),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

void _showDialogReferal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Refer and Earn Rewards'),
        content: const Text(
            'Share App Download Link With Your Friends And Get Rewards Points'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Share'),
                SizedBox(
                  width: 20,
                ),
                Text('Cancel')
              ],
            ),
          ),
        ],
      );
    },
  );
}

void _RewardsOnFirstPurchase(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Purchase Your First Item And Get Reward Points',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        content: Container(
          width: 400,
          height: 259,
          child: Image(
            image: AssetImage('Assets/Images/FirstBuy.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/AllCategories');
                  },
                  child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black54,
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0XFFDF2C25)),
                      child: Center(
                          child: Text(
                        'Buy Now',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Cancel')
              ],
            ),
          ),
        ],
      );
    },
  );
}
