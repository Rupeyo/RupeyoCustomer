import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSellerDetails.dart';

class AllSellers extends StatelessWidget {
  const AllSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        backgroundColor: const Color(0XFFDF2C25),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(CupertinoIcons.back, color: Colors.white)),
        title: const Text(
          'All Sellers List',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadiusDirectional.circular(10)
                    
                      ),
                    
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text('Within 5km Range', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black ),)),
                  ))
                ],
                ),
              ),
              SizedBox(height: 15,),
              NearestSellerDetails(),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadiusDirectional.circular(10)
                    
                      ),
                    
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text('Top Sellers', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black ),)),
                  ))
                ],
                ),
              ), 
              SizedBox(height: 15,),
              NearestSellerDetails(),
              
            ],
          ),
        ),
      ),
    );
  }
}