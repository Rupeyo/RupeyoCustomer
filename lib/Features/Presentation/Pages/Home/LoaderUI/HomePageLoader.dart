import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Widgets/Shimmer.dart';
import 'package:shimmer/shimmer.dart';

class HomeCardSkeleton extends StatelessWidget {
  const HomeCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Skeleton(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: Skeleton(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Skeleton(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Skeleton(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Skeleton(
                      width: MediaQuery.of(context).size.width, height: 180),
                ),
                const SizedBox(height: 34),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Skeleton(
                              width: MediaQuery.of(context).size.width,
                              height: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          Expanded(
                            flex: 1,
                            child: Skeleton(
                              width: MediaQuery.of(context).size.width,
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 140,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 140,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 140,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 140,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Expanded(
                            flex: 1,
                            child: Skeleton(
                              width: MediaQuery.of(context).size.width,
                              height: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          Expanded(
                            flex: 1,
                            child: Skeleton(
                              width: MediaQuery.of(context).size.width,
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                             Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                             Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                             Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Skeleton(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
