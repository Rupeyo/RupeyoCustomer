import 'package:flutter/material.dart';

class recentlyBuy extends StatelessWidget {
  const recentlyBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
             Row(
                children: [
                  Text('Recently Buy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ],
              ),
           ],
      ),
    );
  }
}