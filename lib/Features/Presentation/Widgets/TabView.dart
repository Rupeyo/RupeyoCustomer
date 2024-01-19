import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: TabBar(
            unselectedLabelStyle: TextStyle(color: Colors.grey.shade100),
            //labelPadding: EdgeInsets.only(right: 120),
            dividerColor: Colors.white,
            indicatorColor: Colors.black,
            indicatorPadding: const EdgeInsets.only(bottom: 4),
            indicator: const BoxDecoration(
              color: Colors.white
            ),
            labelColor: Colors.white,
            tabs: [
               Tab(
                  child: Container(
                    width: 230,
                    decoration: BoxDecoration(
                        color: const Color(0XFFDF2C25).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(CupertinoIcons.person), Text(' Myself')],
                    ),
                  ),
                  //icon: Icon(CupertinoIcons.person),
                  //text: 'Myself',
                ),
            
                Tab(
                  child: Container(
                    width: 230,
                    decoration: BoxDecoration(
                        color: const Color(0XFFDF2C25).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(CupertinoIcons.gift,), 
                      SizedBox(width: 4,),
                      Text('Someone Else', style: TextStyle(fontSize: 13),)],
                    ),
                  ),
                  //icon: Icon(CupertinoIcons.person),
                  //text: 'Myself',
                ),
            ],
          
          ),
        ),
      ),
    );
  }
}
