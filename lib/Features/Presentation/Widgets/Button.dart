import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Login/LoginWithPhoneNumber.dart';


class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push<void>(_createRoute());
        // Navigator.pushReplacement(
        //    context,MaterialPageRoute(builder: (context) => const OtpVerification()),);
        // Navigator.of(context).push(_createRoute());
        //  final snackBar = SnackBar(
        //   backgroundColor: Colors.white,
        //     content: const Text('Otp Sended Successfully..', style: TextStyle(fontSize: 17, color: Colors.black),),
        //     action: SnackBarAction(
        //       label: '',
        //       onPressed: () {

        //           // Some code to undo the change.
        //       },
        //     ),
        //   );

        //   // Find the ScaffoldMessenger in the widget tree
        //   // and use it to show a SnackBar.
        //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
       
      },
      child: Container(
        width: 330,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0XFFDF2C25),
        ),
        child: const Center(
            //opacity: opacidade,
            child: Text(
              "Continue",
              style: TextStyle(
                
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ),
        );
  
  }
}
Route _createRoute() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginWithPhoneNumber(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween =
          Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero);
      var curveTween = CurveTween(curve: Curves.ease);

      return SlideTransition(
        position: animation.drive(curveTween).drive(tween),
        child: child,
      );
    },
  );
}