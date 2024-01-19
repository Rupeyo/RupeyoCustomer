import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Widgets/Shimmer.dart';
import 'package:shimmer/shimmer.dart';

class SellerPageLoader extends StatelessWidget {
  const SellerPageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Skeleton(
                            width: 123,
                            height: 170,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Skeleton(
                            width: 230,
                            height: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Skeleton(
                            width: 210,
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Skeleton(
                            width: 180,
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Skeleton(
                            width: 230,
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Skeleton(
                        width: 350,
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                      Skeleton(
                        width: 78,
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
