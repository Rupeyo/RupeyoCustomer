import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddAddressDetails.dart';

class AddressInformation extends StatefulWidget {
  const AddressInformation({super.key});

  @override
  State<AddressInformation> createState() => _AddressInformationState();
}

class _AddressInformationState extends State<AddressInformation> {
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
        title: const Text('Location Information',
            style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        // Add padding around the search bar
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        // Use a Material design search bar
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            //controller: _searchController,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Color(0XFFe8e8e8))),
                              contentPadding: const EdgeInsets.all(10),
                              filled: true,
                              fillColor: const Color(0XFFe8e8e8),
                              //fillColor: Colors.black54,
                              hintText: 'Search "Location"',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                              ),
                              // Add a clear button to the search bar
                              // suffixIcon: IconButton(
                              //   icon: Icon(Icons.clear),
                              //   onPressed: () => //_searchController.clear
                              //   (),
                              // ),
                              // Add a search icon or button to the search bar
                              prefixIcon: IconButton(
                                icon: const Icon(
                                  Icons.search_outlined,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  // Perform the search here
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: MediaQuery.sizeOf(context).width,
                    height: 400,
                    child: const DecoratedBox(decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('Assets/Images/map.png'), fit: BoxFit.cover)
                    ))
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'H Block',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    FittedBox(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'H211, H Block, Sector63, Noida, Uttar Pradesh \n201301,India',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
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
                        Navigator.of(context).push<void>(_AddressInformation());
                      },
                      child: const Text(
                        'CONFIRM',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
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

Route _AddressInformation() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AddressDetails(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);
      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}
