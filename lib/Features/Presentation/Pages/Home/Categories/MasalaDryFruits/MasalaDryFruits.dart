import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/FreshVegitables.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/MasalaDryFruits/MasalaDryFruitsItems.dart';

class MasalaDryFruits extends StatefulWidget {
  const MasalaDryFruits({super.key});

  @override
  State<MasalaDryFruits> createState() => _MasalaDryFruitsState();
}

class _MasalaDryFruitsState extends State<MasalaDryFruits> {
  // late bool _isLoading;

  // @override
  // void initState() {
  //   _isLoading = true;
  //   Future.delayed(const Duration(milliseconds: 1100), () {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   });
  //   super.initState();
  // }

  int _selectedIndex = 0;
  final bool _extended = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFFDF2C25),
          toolbarHeight: 52,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                )),
          ),
          title: const Center(
            child: Text(
              'Masala & DryFruits',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Row(
                  children: <Widget>[
                    SizedBox(
                      //height: height,
                      width: 110,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: IntrinsicHeight(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: NavigationRail(
                              elevation: 5,
                              indicatorColor: const Color(0XFFDF2C25),

                              //useIndicator: true,
                              //Color(0xffDF2C25),
                              //indicatorShape: CircleBorder(side: BorderSide(width: 23)),

                              selectedIndex: _selectedIndex,
                              extended: _extended,
                              onDestinationSelected: (int index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              labelType: NavigationRailLabelType.all,
                              //selectedIconTheme: const IconThemeData(color: Colors.black),
                              //unselectedIconTheme: const IconThemeData(color: Colors.blue),
                              destinations: <NavigationRailDestination>[
                                // NavigationRailDestination(
                                //  icon: SizedBox(
                                //   width: 78,
                                //   child: Image.asset('Assets/Images/FAV/Potato.png', fit: BoxFit.contain, width: 30,)),
                                //  //Icon(Icons.filter_alt_outlined, color: Colors.black,),
                                //  selectedIcon: SizedBox(
                                //   child: Image.asset('Assets/Images/FAV/Potato.png')),
                                //  padding: const EdgeInsets.only(top: 10),
                                //  label: const Text('All', style: TextStyle(fontSize: 16),),
                                // ),
                                NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: SizedBox(
                                        child: Image.asset(
                                      'Assets/Images/Baking.png',
                                      fit: BoxFit.contain,
                                      width: 60,
                                    )),
                                  ),
                                  //padding: const EdgeInsets.all(20),
                                  selectedIcon: SizedBox(
                                      child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Image.asset(
                                      'Assets/Images/Baking.png',
                                      fit: BoxFit.contain,
                                      width: 40,
                                    ),
                                  )),
                                  label: const Text('Baking Mix & Ingredients',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false),
                                ),
                                NavigationRailDestination(
                                    icon: SizedBox(
                                        child: Image.asset(
                                      'Assets/Images/Combos.png',
                                      fit: BoxFit.contain,
                                      width: 50,
                                    )),
                                    //padding: const EdgeInsets.all(20),
                                    selectedIcon: SizedBox(
                                        child: Image.asset(
                                      'Assets/Images/Combos.png',
                                      fit: BoxFit.contain,
                                      width: 40,
                                    )),
                                    label: const Text(
                                      'Combos',
                                      textAlign: TextAlign.center,
                                    )),
                                NavigationRailDestination(
                                  indicatorShape: const CircleBorder(),
                                  icon: Image.asset(
                                    'Assets/Images/DryFruits.png',
                                    fit: BoxFit.contain,
                                    width: 60,
                                  ),
                                  selectedIcon: Image.asset(
                                    'Assets/Images/DryFruits.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  label: const Text(
                                    'Dry Fruits & Nuts',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                NavigationRailDestination(
                                  indicatorShape: const CircleBorder(),
                                  icon: Image.asset(
                                    'Assets/Images/Salt.png',
                                    fit: BoxFit.contain,
                                    width: 60,
                                  ),
                                  selectedIcon: Image.asset(
                                    'Assets/Images/Salt.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  label: const Text(
                                    'Salt, Sugar & jaggery',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                NavigationRailDestination(
                                  indicatorShape: const CircleBorder(),
                                  icon: Image.asset(
                                    'Assets/Images/Whole.png',
                                    fit: BoxFit.contain,
                                    width: 60,
                                  ),
                                  selectedIcon: Image.asset(
                                    'Assets/Images/Whole.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  label: const Text(
                                    'Whole Spices & Seasonings',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                NavigationRailDestination(
                                  indicatorShape: const CircleBorder(),
                                  icon: Image.asset(
                                    'Assets/Images/Powders.png',
                                    fit: BoxFit.contain,
                                    width: 60,
                                  ),
                                  selectedIcon: Image.asset(
                                    'Assets/Images/Powders.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  label: const Text(
                                    'Powders & Pastes',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  ),
                                ),
                                NavigationRailDestination(
                                  indicatorShape: const CircleBorder(),
                                  icon: Image.asset(
                                    'Assets/Images/top.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  selectedIcon: Image.asset(
                                    'Assets/Images/top.png',
                                    fit: BoxFit.contain,
                                    width: 40,
                                  ),
                                  label: const Text(
                                    'Top Deals',
                                    style: TextStyle(),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  ),
                                ),
                                const NavigationRailDestination(
                                  indicatorShape: CircleBorder(),
                                  icon: Icon(Icons.backpack),
                                  padding: EdgeInsets.all(20),
                                  selectedIcon: Icon(
                                    Icons.back_hand_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text('Third'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    VerticalDivider(
                        thickness: 1, width: 1, color: Colors.grey.shade200),
                    // This is the main content.
                    Expanded(
                        child: Center(child: _getPageContent(_selectedIndex))),
                  ],
                ),
        ));
  }
}

Widget _getPageContent(int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return const MasalaDryFruitsItems();

    case 1:
      return const FreshVegitableItems();

    case 2:
      return const FreshVegitableItems();

    case 3:
      return const FreshVegitableItems();

    case 4:
      return const FreshVegitableItems();
    default:
      return const FreshVegitableItems();
  }
}
