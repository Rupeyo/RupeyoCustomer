import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Cart/Cart.dart';

class CartItemsModelBottomSheet extends StatefulWidget {
  const CartItemsModelBottomSheet({super.key});

  @override
  State<CartItemsModelBottomSheet> createState() =>
      _CartItemsModelBottomSheetState();
}

class _CartItemsModelBottomSheetState extends State<CartItemsModelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        // color:  Color(0XFFDF2C25),
      ),
      height: 78,
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Items | ₹456',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              },
              child: const Row(
                children: [
                  Icon(
                    CupertinoIcons.bag,
                    color: Colors.white,
                    size: 32,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'View Cart',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
