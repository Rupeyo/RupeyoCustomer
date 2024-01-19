import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Payment_Methods.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Products/Products.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: Colors.white,
        height: 100,
        child: Container(
          height: 50,
          margin: const EdgeInsets.all(24),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text('To Pay'),
                    Text(
                      '₹169',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 3,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentMethods()));
                    },
                    child: const Center(
                      child: Text(
                        'Continue To Payment',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 58,
        backgroundColor: const Color(0XFFDF2C25),
        leading: InkWell(
          onTap: () {
            //Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        title: const Center(
            child: Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 110,
              height: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                      BorderSide(width: 1.0, color: Colors.white),
                    ),
                    elevation: const MaterialStatePropertyAll(4),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0XFFDF2C25))),
                onPressed: () {
                  Navigator.pushNamed(context, '/Products');
                },
                child: const Text(
                  'Add More',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'Assets/Images/ccnt.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  'Coconut\n1pc',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 106,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0XFFDF2C25),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                // _removeProduct();
                                              },
                                              icon: const Icon(
                                                CupertinoIcons.minus,
                                                color: Colors.white,
                                                size: 23,
                                              )),
                                          const Text(
                                            '1',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                // _addProduct();
                                              },
                                              icon: const Icon(
                                                  CupertinoIcons.plus,
                                                  color: Colors.white,
                                                  size: 23)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '₹80',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      '₹90',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'Assets/Images/apple.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  'Apple\n1kg',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 106,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0XFFDF2C25),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                // _removeProduct();
                                              },
                                              icon: const Icon(
                                                CupertinoIcons.minus,
                                                color: Colors.white,
                                                size: 23,
                                              )),
                                          const Text(
                                            '1',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                // _addProduct();
                                              },
                                              icon: const Icon(
                                                  CupertinoIcons.plus,
                                                  color: Colors.white,
                                                  size: 23)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '89',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      '₹120',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
