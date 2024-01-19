import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/BottomBar.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddressInformation.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Profile.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ProfileAdd.dart';
import 'package:rupiyo/Features/Presentation/Widgets/TabView.dart';
import 'package:rupiyo/theme/Colors.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 60,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Text('Add Address Details',
            style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Assets/Images/map.png'),
                              fit: BoxFit.cover))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'H Block',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: FittedBox(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'H211, H Block, Sector63, Noida, Uttar Pradesh \n201301,India',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 60,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: const BorderSide(color: Color(0XFFDF2C25)),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {
                            //showCartDialog(context);
                          },
                          child: const Text(
                            'Add',
                            style: TextStyle(
                                color: Color(0XFFDF2C25), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                const SizedBox(
                  height: 15,
                ),
                AddressForm(),
                const SizedBox(
                  height: 30,
                ),
                ContainerSelector(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: FittedBox(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          maximumSize: const Size.fromWidth(370),
                          backgroundColor: const Color(0XFFDF2C25),
                        ),
                        onPressed: () {
                          //Navigator.of(context).push<void>(_AddressInformation());
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                actions: [
                                  Center(
                                      child: SpinKitThreeBounce(color: ColorsField.MainColor, size: 24,))
                                ],
                                title: Text('Success'),
                                content: Text(
                                  'Address details saved. Redirecting to Profile Page...',
                                ),
                              );
                            },
                          );

                          // Simulate a delay before redirecting to the home page
                          Timer(const Duration(seconds: 3), () {
                            // Navigate to the home page
                            Navigator.of(context).pop(); // Close the dialog
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProfileSection()),
                            );
                          });
                        },
                        child: const Text(
                          'SAVE ADDRESS',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class AddressForm extends StatefulWidget {
  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('House No.& Floor'),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 55,
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Building & Block No.'),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 55,
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Landmark & Area Name(Optional)'),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 55,
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
      ],
    );
  }
}

class ContainerSelector extends StatefulWidget {
  @override
  _ContainerSelectorState createState() => _ContainerSelectorState();
}

class _ContainerSelectorState extends State<ContainerSelector> {
  String selectedContainer = 'Home'; // Selected container label

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Add Address Label',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildSelectableContainer('Home'),
            const SizedBox(
              width: 10,
            ),
            buildSelectableContainer('Work'),
            const SizedBox(
              width: 10,
            ),
            buildSelectableContainer('Other'),
          ],
        ),
      ],
    );
  }

  Widget buildSelectableContainer(String label) {
    return GestureDetector(
      onTap: () {
        // Update the selected container label when tapped
        setState(() {
          selectedContainer = label;
        });
      },
      child: Container(
        width: 100,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              selectedContainer == label ? ColorsField.MainColor : Colors.white,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: selectedContainer == label ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
