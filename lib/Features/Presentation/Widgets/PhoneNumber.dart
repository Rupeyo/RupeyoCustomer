import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberWithCC extends StatefulWidget {
  const PhoneNumberWithCC({super.key});

  @override
  State<PhoneNumberWithCC> createState() => _PhoneNumberWithCCState();
}

class _PhoneNumberWithCCState extends State<PhoneNumberWithCC> {
  @override
  Widget build(BuildContext context) {
    return  IntlPhoneField(
      dropdownIconPosition: IconPosition.trailing,
             dropdownDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
             ),
            decoration: InputDecoration(
            counterText: "",
            labelText: " Enter PhoneNumber",
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
         ),
       ),
      initialCountryCode: 'IN',          
     );
  }
}