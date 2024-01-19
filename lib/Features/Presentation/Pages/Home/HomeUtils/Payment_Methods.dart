import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

List<String> options = ['MobiKwik|Zip(Paylater)', 'Freecharge'];

class _PaymentMethodsState extends State<PaymentMethods> {
  String currentoption = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: const Color(0XFFDF2C25),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(CupertinoIcons.arrow_left, color: Colors.white)),
        title: const Text(
          'Payment Methods',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Card(
                color: Colors.white,
                elevation: 0,
                shape: BeveledRectangleBorder(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deliver to',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Order Amount',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Work',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '₹412',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/paytm.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Paytm  ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                final snackBar = SnackBar(
                                  content: const Text(
                                      'PayTm Account Link Procedure'),
                                  action: SnackBarAction(
                                    label: 'Close',
                                    onPressed: () {
                                      // Some code to undo the change.
                                    },
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Row(
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Link Account',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0XFFDF2C25),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/amapay.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Amazon Pay Balance',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/phonepay.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'PhonePay',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/freecharge.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Freecharge',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 46,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                side: BorderSide(color: Colors.grey.shade300),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Other Wallets',
                                style: TextStyle(
                                    color: Color(0XFFDF2C25),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Net Banking',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      //SBI
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.4),
                                                        spreadRadius: 1,
                                                        blurRadius: 3,
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            child: Image.asset(
                                                              'Assets/Images/sbi.png',
                                                              width: 40,
                                                              height: 30,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            const Row(
                                              children: [
                                                Text(
                                                  'SBI',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      // HDFC
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Image.asset(
                                                          'Assets/Images/Hdfc.png',
                                                          width: 40,
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'HDFC',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      //ICICI
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Image.asset(
                                                          'Assets/Images/ICIC.png',
                                                          width: 40,
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'ICICI',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      //AXIS
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Image.asset(
                                                          'Assets/Images/Axis.png',
                                                          width: 40,
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Axis',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 46,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                side: BorderSide(color: Colors.grey.shade300),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Other Banks',
                                style: TextStyle(
                                    color: Color(0XFFDF2C25),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Pay On Delivery',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/CashOnD.jpg',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Cash On Delivery',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                                'Scan & pay via UPI on Delivery. in Case of Cash,\nWe are not accepting ₹2000 notes')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'UPI',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/upi.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Pay by Any UPI app',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Use any UPI app on Your Phone To Pay',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  //SBI
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 58,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Image.asset(
                                                          'Assets/Images/paytm.png',
                                                          width: 45,
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'PayTm',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  //SBI
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 58,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        child: Image.asset(
                                                          'Assets/Images/gpay.png',
                                                          width: 47,
                                                          height: 38,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Gpay',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                side: BorderSide(color: Colors.grey.shade300),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Other UPI options',
                                style: TextStyle(
                                    color: Color(0XFFDF2C25),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Pluxee | Sodexo',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Image.asset(
                                              'Assets/Images/pluxee.png',
                                              width: 40,
                                              height: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Pluxee | Sodexo Meal Card',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.forward,
                                          color: Color(0XFFDF2C25),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Cards',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(5),
                                            child: Image.asset(
                                              'Assets/Images/card.png',
                                              width: 50,
                                              height: 60,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'Credit/Debit Cards',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.forward,
                                          color: Color(0XFFDF2C25),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 173,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Pay Later',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(0),
                                            child: Image.asset(
                                              'Assets/Images/LazyPay.png',
                                              width: 60,
                                              height: 60,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'LazyPay',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Link Account',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0XFFDF2C25),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 58,
                                  height: 50,
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
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(3),
                                            child: Image.asset(
                                              'Assets/Images/simpl.png',
                                              width: 52,
                                              height: 47,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Simpl',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: options[0],
                                        groupValue: currentoption,
                                        onChanged: (value) {
                                          setState(() {
                                            currentoption = value.toString();
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade500,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  color: Colors.grey.shade200,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
