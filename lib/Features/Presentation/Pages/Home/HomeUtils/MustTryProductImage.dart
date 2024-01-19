import 'package:flutter/material.dart';

class MustTryProductImage extends StatelessWidget {
  const MustTryProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Container(
                        
                        margin: const EdgeInsets.only(right: 4, left: 6, top: 0, bottom: 12),
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage('Assets/Images/makhana.png',), fit: BoxFit.cover),
                        //OutlineInputBorder ,
                        //color: Colors.teal,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0), 
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              // child: Image.asset(
                                              //   "Assets/Images/fruits.png",
                                              //   width: 140,
                                              //   height: 145,
                                              //   fit: BoxFit.contain,
                                              // ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(bottom: 0, left: 0, top: 13),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: const Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 0),
                                                  child: Text(
                                                    'Farmely\nPrasadam\nMakhana',
                                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 20),
                                                  child: Text('Add Some Crunch\nto your munch-time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),),
                                                )
                                              ],
                                            ),
                                          ),
                                          ),
                                          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 9, top: 0),
                                                child: Row(
                                                  children: [
                                                    const Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(right: 2, bottom: 12),
                                                          child: Text("200g", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 13, ),
                                                          child: Text("\u{20B9}${247}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          ),
                                                        ),
                                                      ],
                                                      
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10, top: 40),
                                                      child: Text('290', style: TextStyle(color: Colors.grey.shade400, fontSize: 18, decoration: TextDecoration.lineThrough),),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 15, top: 50,),
                                                child: SizedBox(
                                                  width: 102,
                                                  height: 58,
                                                  child: Container(
                                                    padding: const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.white),
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(6), 
                                                    ),
                                                    child: 
                                                    const Center(child: Text('Add', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Color(0XFFDF2C25)),)),
                                                    ),
                                                    //child: Icon(CupertinoIcon),
                                                  ),
                                              ),
                                              
                                              //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                               
                                            ],
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
                                  const SizedBox(width: 10,),
                                 Container(
                        margin: const EdgeInsets.only(right: 4, left: 6, top: 0, bottom: 12),
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                             image: const DecorationImage(image: AssetImage('Assets/Images/zmaida.png',), fit: BoxFit.cover),
                       
                        //OutlineInputBorder ,
                        color: Colors.lightBlue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                                       
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              // child: Image.asset(
                                              //   "Assets/Images/fruits.png",
                                              //   width: 140,
                                              //   height: 145,
                                              //   fit: BoxFit.contain,
                                              // ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(bottom: 0, left: 0, top: 13),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: const Column(
                                              children: [
                                                Text(
                                                  'Zero Maida\nBread',
                                                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),
                                                ),
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 19),
                                                  child: Text('Add Some Crunch\nto your munch-time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),),
                                                )
                                              ],
                                              
                                            ),
                            
                                          ),
                                          
                                          ),
                                          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(left: 9, top: 0),
                                                child: Row(
                                                  
                                                  children: [
                                                    
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(right: 2, bottom: 12, top: 62),
                                                          child: Text("200g", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 13, ),
                                                          child: Text("\u{20B9}${247}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          ),
                                                        ),
                                                      ],
                                                      
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 10, top: 99),
                                                      child: Text('290', style: TextStyle(color: Colors.white, fontSize: 18, decoration: TextDecoration.lineThrough),),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 15, top: 87,),
                                                child: SizedBox(
                                                  width: 102,
                                                  height: 58,
                                                  child: Container(
                                                    padding: const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      
                                                      border: Border.all(color: Colors.white),
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(6), 
                                                    ),
                                                    child: 
                                                    const Center(child: Text('Add', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Color(0XFFDF2C25)),)),
                                                    ),
                                                    //child: Icon(CupertinoIcon),
                                                  ),
                                              ),
                                              
                                              //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                               
                                            ],
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
                                  const SizedBox(width: 10,),
                                   Container(
                        
                        margin: const EdgeInsets.only(right: 4, left: 6, top: 0, bottom: 12),
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage('Assets/Images/makhana.png',), fit: BoxFit.cover),
                        //OutlineInputBorder ,
                        //color: Colors.teal,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 3,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0), 
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: (){},
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              // child: Image.asset(
                                              //   "Assets/Images/fruits.png",
                                              //   width: 140,
                                              //   height: 145,
                                              //   fit: BoxFit.contain,
                                              // ),
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(bottom: 0, left: 0, top: 13),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: const Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 0),
                                                  child: Text(
                                                    'Farmely\nPrasadam\nMakhana',
                                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 20),
                                                  child: Text('Add Some Crunch\nto your munch-time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),),
                                                )
                                              ],
                                              
                                            ),
                            
                                          ),
                                          
                                          ),
                                          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 9, top: 0),
                                                child: Row(
                                                  
                                                  children: [
                                                    
                                                    const Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(right: 2, bottom: 12),
                                                          child: Text("200g", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 13, ),
                                                          child: Text("\u{20B9}${247}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500 , color: Colors.white),
                                                          ),
                                                        ),
                                                      ],
                                                      
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10, top: 40),
                                                      child: Text('290', style: TextStyle(color: Colors.grey.shade400, fontSize: 18, decoration: TextDecoration.lineThrough),),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 15, top: 50,),
                                                child: SizedBox(
                                                  width: 102,
                                                  height: 58,
                                                  child: Container(
                                                    padding: const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      
                                                      border: Border.all(color: Colors.white),
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(6), 
                                                    ),
                                                    child: 
                                                    const Center(child: Text('Add', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Color(0XFFDF2C25)),)),
                                                    ),
                                                    //child: Icon(CupertinoIcon),
                                                  ),
                                              ),
                                              
                                              //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                               
                                            ],
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
                                  const SizedBox(width: 10,),
                      //             Container(
                      //               margin: const EdgeInsets.only(right: 4, left: 4, top: 0, bottom: 12),
                      //                 height: 280,
                      // width: 280,
                      //               decoration: BoxDecoration(
                      //                   //OutlineInputBorder ,
                      //                   color: Colors.purple[50],
                      //                 borderRadius: BorderRadius.circular(15.0),
                      //               ),
                      //              // child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                      //             ),
                         ],
              ),
      ),
    );
  }
}