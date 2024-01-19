import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/Fruits&Vegitables.dart';
class ExploreByCtgDetails extends StatelessWidget {
  const ExploreByCtgDetails({super.key});

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

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
            height: 130,
            width: 180,
            decoration: BoxDecoration(
              //OutlineInputBorder ,
              // color: Colors.purple[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                // child: Container(
                //   alignment: Alignment.centerLeft,
                //   child: const Text(
                //     'Frutis & Vegetables',
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                //   ),
                // ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push<void>(_createRoute());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const FruitsAndVegitables()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    child: Image.asset(
                      "Assets/Images/CategoriesImages/Fruits&Vegitables.jpg",
                      // width: 120,
                      // height: 73,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // const Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                //   ],
                // )
              ],
            ),

            // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
          ),
          Container(
            margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
            height: 130,
            width: 180,
            decoration: BoxDecoration(
              //OutlineInputBorder ,
              // color: Colors.purple[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                // child: Container(
                //   alignment: Alignment.centerLeft,
                //   child: const Text(
                //     'Atta, Rice, Oils & Dals',
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color:  Colors.deepPurple),
                //   ),
                // ),

                // ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    child:
                        Image.asset("Assets/Images/CategoriesImages/Atta.png",
                            // width: 120,
                            // height: 73,
                            fit: BoxFit.cover),
                  ),
                ),

                // const Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                //   ],
                // )
              ],
            ),

            // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
          ),
        ],
      ),
    );
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
            height: 250,
            width: 340,
            decoration: BoxDecoration(
              //OutlineInputBorder ,
              // color: Colors.purple[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                // child: Container(
                //   alignment: Alignment.centerLeft,
                //   child: const Text(
                //     'Frutis & Vegetables',
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                //   ),
                // ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push<void>(_createRoute());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const FruitsAndVegitables()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    child: Image.asset(
                      "Assets/Images/CategoriesImages/Fruits&Vegitables.jpg",
                      // width: 120,
                      // height: 73,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // const Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                //   ],
                // )
              ],
            ), // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
          ),
          Container(
            margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
            height: 250,
            width: 340,
            decoration: BoxDecoration(
              //OutlineInputBorder ,
              // color: Colors.purple[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                // child: Container(
                //   alignment: Alignment.centerLeft,
                //   child: const Text(
                //     'Atta, Rice, Oils & Dals',
                //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color:  Colors.deepPurple),
                //   ),
                // ),

                // ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    child:
                        Image.asset("Assets/Images/CategoriesImages/Atta.png",
                            // width: 120,
                            // height: 73,
                            fit: BoxFit.cover),
                  ),
                ),

                // const Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),),
                //     //sText("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)

                //   ],
                // )
              ],
            ),

            // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const FruitsAndVegitables(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);

      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}
