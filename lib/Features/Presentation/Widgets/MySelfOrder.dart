import 'package:flutter/material.dart';

class MySelfOrder extends StatefulWidget {
  const MySelfOrder({super.key});

  @override
  State<MySelfOrder> createState() => _MySelfOrderState();
}

class _MySelfOrderState extends State<MySelfOrder> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        SafeArea(
            child: Column(
            children: [
            Row(
              children: [
                const Text('HouseNo.&Floor*'),
                TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF6200EE)))),
                )
              ],
            ),
            Row(
              children: [
                const Text('HouseNo.&Floor*'),
                TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF6200EE)))),
                )
              ],
            ),
          ],
        )),
      ],
    );
  }
}
