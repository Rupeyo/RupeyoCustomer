//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Cart/Cart.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Home.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Order.dart';
import 'package:rupiyo/Features/Presentation/Pages/Rewards/Rewards.dart';
//import 'package:rupiyo/Features/Presentation/Pages/Cart.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ExitPopup.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void onTapImplemented(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Rewards(),
    const Cart(),
    const Order(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: SizedBox(
          height: 64,
          width: 62,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            //foregroundColor: Colors.black,
            elevation: 8.0,
            shape: const CircleBorder(),
            child: const ImageIcon(
              AssetImage('Assets/Images/Rupeyo-logo-icon.png'),
              color: Color(0XFFDF2C25),
              size: 39,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 0),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 50),
                child: Icon(
                  Icons.account_balance_wallet_rounded,
                ),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.favorite_border_outlined,
                ),
              ),
              label: 'WishList',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall_outlined,
              ),
              label: 'Order',
            ),
          ],
          selectedItemColor: const Color(0XFFDF2C25),
          unselectedItemColor: const Color.fromARGB(255, 146, 138, 138),
          selectedFontSize: 0,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          onTap: onTapImplemented,
        ),
      ),
    );
  }
}
