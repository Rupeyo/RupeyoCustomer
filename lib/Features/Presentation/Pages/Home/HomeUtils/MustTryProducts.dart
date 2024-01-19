import 'package:flutter/material.dart';

class MustTryProducts extends StatelessWidget {
  const MustTryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
             Row( 
                children: [
                  Text('Must Try Products', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
                  SizedBox(width: 0,),
                ],
              ),
           ],
      ),
    );
    
  }
}