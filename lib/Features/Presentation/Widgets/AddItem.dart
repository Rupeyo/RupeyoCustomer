import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItemCount extends StatefulWidget {
  const AddItemCount({super.key});

  @override
  State<AddItemCount> createState() => _AddItemCountState();
}

class _AddItemCountState extends State<AddItemCount> {
   var _counter = 1;
  @override
  Widget build(BuildContext context) {

_removeProduct() {
setState(() {
  if (_counter > 0) {
    _counter--;
  }
});
}

_addProduct() {
setState(() {
    _counter++;
});
}
    return SizedBox(
      width: 99,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFFDF2C25), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  _removeProduct();
                },
                icon: const Icon(
                  CupertinoIcons.minus,
                  color: Colors.white,
                  size: 25,
                )),
             Text(
               '$_counter',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            IconButton(
                onPressed: () {
                  _addProduct();
                },
                icon: const Icon(CupertinoIcons.plus,
                    color: Colors.white, size: 23)),
          ],
        ),
      ),
    );
  }

}