// import 'package:flutter/material.dart';
// import 'package:rupiyo/Features/Presentation/Pages/OtpVerification.dart';

// // ignore: must_be_immutable
// class BotaoAnimado extends StatelessWidget {
//   AnimationController controller;
//   Animation<double> largura;
//   Animation<double> altura;
//   Animation<double> radius;
//   Animation<double> opacidade;

//   BotaoAnimado({super.key, required this.controller})
//       : largura = Tween<double>(
//           begin: 0,
//           end: 500,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(0.0, 0.5),
//           ),
//         ),
//         altura = Tween<double>(
//           begin: 0,
//           end: 50,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(0.5, 0.7),
//           ),
//         ),
//         radius = Tween<double>(
//           begin: 0,
//           end: 20,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(0.6, 1.0),
//           ),
//         ),
//         opacidade = Tween<double>(
//           begin: 0,
//           end: 1,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(0.6, 0.8),
//           ),
//         );

//   Widget _buildAnimation(BuildContext context, Widget? widget) {
//     return InkWell(
//       onTap: () {
//          Navigator.of(context).push(_createRoute());
//         //  final snackBar = SnackBar(
//         //   backgroundColor: Colors.white,
//         //     content: const Text('Otp Sended Successfully..', style: TextStyle(fontSize: 17, color: Colors.black),),
//         //     action: SnackBarAction(
//         //       label: '',
//         //       onPressed: () {

//         //           // Some code to undo the change.
//         //       },
//         //     ),
//         //   );

//         //   // Find the ScaffoldMessenger in the widget tree
//         //   // and use it to show a SnackBar.
//         //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
       
//       },
//       child: Container(
//         width: largura.value,
//         height: altura.value,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(radius.value),
//           gradient: const LinearGradient(
//             colors: [
//              Color.fromARGB(255, 218, 109, 105),
//               Color(0XFFDF2C25),
//             ],
//           ),
//         ),
//         child: Center(
//           child: FadeTransition(
//             opacity: opacidade,
//             child: const Text(
//               "Continue",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: controller,
//       builder: _buildAnimation,
//     );
//   }
// }
// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) =>  OtpVerification(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }