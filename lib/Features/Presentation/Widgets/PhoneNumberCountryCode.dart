// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
// import 'package:flutter/material.dart';

// class PhoneNumberWithCountry extends StatefulWidget {
//   const PhoneNumberWithCountry({super.key});

//   @override
//   State<PhoneNumberWithCountry> createState() => _PhoneNumberWithCountryState();
// }

// class _PhoneNumberWithCountryState extends State<PhoneNumberWithCountry> {

//   final CountryPicker = const FlCountryCodePicker();
//   CountryCode? countryCode;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//               TextFormField(
//               keyboardType: TextInputType.number,
//               textInputAction: TextInputAction.done,
//               maxLines: 1,
//               decoration: InputDecoration(
//                 labelText: "Enter Phone Number",
//                 labelStyle: const TextStyle(color: Colors.black),
//                 border: const OutlineInputBorder(),
//                 prefixIcon: Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                   margin: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       GestureDetector(
//                         onTap: () async {
//                           final code = await CountryPicker.showPicker(context: context);
//                           setState(() {
//                             countryCode = code;
//                           });
//                         },
//                         child: Row(

//                           children: [
                            
//                             Container(
//                               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6 ),
//                               decoration: BoxDecoration(color: Colors.black,borderRadius:BorderRadius.circular(5),),
//                               child: const Text('+91', style: TextStyle(color: Colors.white),),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
    
//       ),
//     );
//   }
// }