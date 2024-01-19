import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/All_Categories.dart';

class ExploreByCtg extends StatefulWidget {
  const ExploreByCtg({super.key});

  @override
  State<ExploreByCtg> createState() => _ExploreByCtgState();
}

class _ExploreByCtgState extends State<ExploreByCtg> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return  const WideLayout();
        } else {
          return  const NarrowLayout();
        }
      },
    );
  }
}

class WideLayout extends StatelessWidget{
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Explore By Categories', style: TextStyle(fontSize:23,fontWeight: FontWeight.bold),),
                //SizedBox(width: 180,),
                ],
             ),
             GestureDetector(
              onTap: () {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => const AllCategories()));
              },
               child: const Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //SizedBox(width: 180,),
                   Text('See All>', style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Color(0XFFDF2C25)),),
                ],
                         ),
             ),
          ],
        ),
      ),
    );
  }

}

class NarrowLayout extends StatelessWidget{
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
   return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Explore By Categories', style: TextStyle(fontWeight: FontWeight.bold),),
                //SizedBox(width: 180,),
                ],
             ),
             Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SizedBox(width: 180,),
                 Text('See All>', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0XFFDF2C25)),),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}

