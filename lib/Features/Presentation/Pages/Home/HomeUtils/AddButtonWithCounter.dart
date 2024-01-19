import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddButtonWithCounter extends StatefulWidget {
  const AddButtonWithCounter({super.key});

  @override
  State<AddButtonWithCounter> createState() => _AddButtonWithCounterState();
}

class _AddButtonWithCounterState extends State<AddButtonWithCounter> {
  int counter = 1;
  bool showCounterButtons = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: showCounterButtons
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0XFFDF2C25),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                          if (counter == 0) {
                            showCounterButtons = false;
                          }
                        });
                      },
                      icon: const Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                        size: 25,
                      ),
                      ),
                      Text(
                      '$counter',
                       style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: const Icon(CupertinoIcons.plus,
                          color: Colors.white, size: 23)),
                ],
              ),
            )
          : SizedBox(
              width: 98,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFDF2C25),
                  foregroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  setState(() {
                    showCounterButtons = true;
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
    );
  }
}
