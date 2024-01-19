// ignore: file_names
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        //margin: const EdgeInsets.only(right: 4, left: 4, top: 0, bottom: 12),
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey.shade400,
            //  // spreadRadius: 1,
            //  // blurRadius: 6,
            // ),
          ],
          //OutlineInputBorder ,
          //color: Colors.purple[50],
          // borderRadius: BorderRadius.circular(15.0),
        ),
        child: Image.asset(
          'Assets/Images/Banner.PNG',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
