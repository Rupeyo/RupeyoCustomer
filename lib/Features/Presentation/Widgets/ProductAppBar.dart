import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: const Color(0XFFDF2C25),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              CupertinoIcons.arrow_left,
              size: 26,
              color: Colors.white,
            ),
          ),
          const Text(
            '   Products Details',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
