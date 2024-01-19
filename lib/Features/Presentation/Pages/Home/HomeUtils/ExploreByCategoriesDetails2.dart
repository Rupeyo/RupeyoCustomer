import 'package:flutter/material.dart';

class ExploreByCategories2 extends StatelessWidget {
  const ExploreByCategories2({super.key});

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

class WideLayout extends StatelessWidget{
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
                          margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
                          height: 240,
                          width: 165,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0),),
                                        child: Column(
                                        children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerRight,
                                            //   child: const Text(
                                            //     'Dairy,Bread\n&Eggs',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Container(
                                                margin: const EdgeInsets.all(0),
                                                child: Image.asset(
                                                  "Assets/Images/CategoriesImages/DairyBread.png",
                                                  // width: 64,
                                                  // height: 65,
                                                  fit: BoxFit.contain,
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
                          height: 240,
                          width: 165,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
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
                                             //Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Cold Drinks\n&Juices',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            //),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                                // width: 64,
                                                // height: 65,
                                                fit: BoxFit.contain,
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
                          height: 240,
                          width: 165,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0), ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                            // child: Container(
                                            //   alignment: Alignment.center,
                                            //   child: const Text(
                                            //     'Cleaning Essentials',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/MUN.png",
                                                // width: 64,
                                                // height: 65,
                                                fit: BoxFit.contain,
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
                          height: 240,
                          width: 165,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0),),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/meat.png",
                                                // width: 64,
                                                // height: 45,
                                                fit: BoxFit.contain,
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


class NarrowLayout extends StatelessWidget{
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
                          margin: const EdgeInsets.only(right: 0, left: 0, top: 0, bottom: 0),
                          height: 120,
                          width: 82,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0),),
                                        child: Column(
                                        children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerRight,
                                            //   child: const Text(
                                            //     'Dairy,Bread\n&Eggs',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Container(
                                                margin: const EdgeInsets.all(0),
                                                child: Image.asset(
                                                  "Assets/Images/CategoriesImages/DairyBread.png",
                                                  // width: 64,
                                                  // height: 65,
                                                  fit: BoxFit.contain,
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
                          height: 120,
                          width: 82,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
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
                                             //Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Cold Drinks\n&Juices',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            //),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/ColdDrinks&Juices.png",
                                                // width: 64,
                                                // height: 65,
                                                fit: BoxFit.contain,
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
                          height: 120,
                                  width: 82,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0), ),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                            // child: Container(
                                            //   alignment: Alignment.center,
                                            //   child: const Text(
                                            //     'Cleaning Essentials',
                                            //     style: TextStyle(fontSize: 9.8, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/MUN.png",
                                                // width: 64,
                                                // height: 65,
                                                fit: BoxFit.contain,
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
                          height: 120,
                                  width: 82,
                          decoration: BoxDecoration(
                          //OutlineInputBorder ,
                          //color: Colors.purple[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15.0),),
                                        child: Column(
                                          children: [
                                            //  Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            // child: Container(
                                            //   alignment: Alignment.centerLeft,
                                            //   child: const Text(
                                            //     'Masala & Dry Fruits',
                                            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.deepPurple),
                                            //   ),
                                            // ),
                                            
                                            // ),
                                            InkWell(
                                              onTap: (){},
                                              child: Image.asset(
                                                "Assets/Images/CategoriesImages/meat.png",
                                                // width: 64,
                                                // height: 45,
                                                fit: BoxFit.contain,
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

