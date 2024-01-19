import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/All_Sellers.dart';

class NearestSeller extends StatefulWidget {
  const NearestSeller({super.key});

  @override
  State<NearestSeller> createState() => _NearestSellerState();
}

class _NearestSellerState extends State<NearestSeller> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return const WideLayout();
        } else {
          return const NarrowLayout();
        }
      },
    );
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.only(top: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Nearest Seller',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //SizedBox(width: 180,),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SizedBox(width: 180,),
                Text(
                  'See All>',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFDF2C25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Nearest Seller',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //SizedBox(width: 180,),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SizedBox(width: 180,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                         builder: (context) => const AllSellers()));
                  },
                  child: const Text(
                    'See All>',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFFDF2C25)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

