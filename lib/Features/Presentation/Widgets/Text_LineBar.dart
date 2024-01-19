import 'package:flutter/material.dart';

class TextWithLine extends StatelessWidget {
  const TextWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
          children: <Widget>[
          Expanded(
              child: Divider(color: Color(0XFFe8e8e8),),
          ),       
          Text("OTP Verification",),        
      
          Expanded(
              child: Divider(color: Color(0XFFe8e8e8),)
          ),
          ]
        );
  }
}