import 'package:flutter/material.dart';

class OurTopSeller extends StatelessWidget {
  const OurTopSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 0, left: 16),
      child: Column(
        children: [
             Row( 
                children: [
                  Text('Our Top Seller', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  //SizedBox(width: 160,),
                ],
              ),
           ],
      ),
      );
  }
}