import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onTap;
  const RoundButton({super.key, required this.onTap, required bool loading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: 356,
                    height: 42,
                    child: ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0XFFDF2C25)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      onTap;
                      },
                    child: const Padding( 
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                );
  }
}