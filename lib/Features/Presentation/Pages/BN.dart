import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Cart/Cart.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Home.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Order.dart';
import 'package:rupiyo/Features/Presentation/Pages/Rewards/Rewards.dart';

class BN extends StatefulWidget {
  const BN({super.key});

  @override
  State<BN> createState() => _BNState();
}

class _BNState extends State<BN> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/widgets here
    const Home(), // Example: HomeScreen is one of the pages
    const Rewards(),
    const Cart(),
    const Order(),
    // Example: ProfileScreen is another page
    // Add more pages as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFFDF2C25),
        unselectedItemColor: Colors.black38,
        selectedLabelStyle: const TextStyle(color: Colors.black12),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_rounded),
            label: 'Order',
          ),
          // Add more BottomNavigationBarItems as needed
        ],
      ),
    );
  }
}
