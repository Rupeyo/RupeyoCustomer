import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 336,
      width: 200,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "-50%",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "Assets/Images/RecentlyBuy/anandcow.png",
                width: 140,
                height: 145,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 8, left: 8),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: const Text(
                                            ' Ananda Cow \n Paneer',
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                                          ),
                                        ),
          ),
           Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(right: 2),
                                              child: Column(
                                                children: [
                                                  Text("\u{20B9}${100}", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, decoration: TextDecoration.lineThrough , color: Colors.grey),
                                                  
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 13),
                                                    child: Text("\u{20B9}${77}", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500 , color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                                
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12, top: 12),
                                              child: SizedBox(
                                                width: 75,
                                                height: 43,
                                                child: Container(
                                                  padding: const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    
                                                    border: Border.all(color: const Color(0XFFDF2C25)),
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(6), 
                                                  ),
                                                  child: 
                                                  const Center(child: Text('Add', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)),
                                                  ),
                                                  //child: Icon(CupertinoIcon),
                                                ),
                                            ),
                                            
                                            //Text("\$494", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, ),)
                                             
                                          ],
                                        ),
                                        
                                        ),
        ],
      ),
    );
  }
}
