import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Widgets/Shimmer.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesLoader extends StatelessWidget {
  const CategoriesLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 24),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                   Row(
                    children: [
                      Skeleton(width: 230, height: 330,),
                      SizedBox(width: 20,),
                      Skeleton(width: 230, height: 330,),
                      
                    ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                    children: [
                      Skeleton(width: 230, height: 330,),
                      SizedBox(width: 20,),
                      Skeleton(width: 230, height: 330,),
                      
                    ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                    children: [
                      Skeleton(width: 230, height: 330,),
                      SizedBox(width: 20,),
                      Skeleton(width: 230, height: 330,),
                      
                    ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                    children: [
                      Skeleton(width: 230, height: 330,),
                      SizedBox(width: 20,),
                      Skeleton(width: 230, height: 330,),
                      
                    ],
                   ),   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}