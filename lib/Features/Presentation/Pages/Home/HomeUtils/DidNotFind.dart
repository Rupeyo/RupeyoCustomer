import 'package:flutter/material.dart';

class DidNotFind extends StatelessWidget {
  const DidNotFind({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                          //margin: const EdgeInsets.only(right: 4, left: 4, top: 0, bottom: 12),
                           height: 190,
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                              //OutlineInputBorder ,
                              color: Colors.grey.shade100,
                            //borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0, left: 10, bottom: 0, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(' Didnt find \n what you were \n looking for?', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                                const SizedBox(width: 27,),
                                Image.asset('Assets/Images/Search_icon.png', color: Colors.grey.shade300,),
                              ],

                            ),
                          ),
                          //child: Image.asset('Assets/Images/GR.png', width: 120, height: 136,),
                        );
  }
}