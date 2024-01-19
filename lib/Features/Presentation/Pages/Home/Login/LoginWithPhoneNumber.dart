//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Login/OtpVerification.dart';
import 'package:rupiyo/Features/Presentation/Widgets/PrivacyPolicy.dart';
import 'package:rupiyo/theme/Colors.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    //String initialCountry = 'IN';

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return const WideLayout();
        } else {
          return const NarrowLayout();
        }
      },
    );
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool loading = false;
    final phoneNumberController = TextEditingController();
    //Classes

    PhoneNumber number = PhoneNumber(isoCode: 'IN');
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        // child: Padding(
        //   padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: GestureDetector(
              //     onTap: () => Navigator.pop(context),
              //     child: Icon(
              //       Icons.arrow_back,
              //       size: 32,
              //       color: Colors.black54,
              //     ),
              //   ),
              // ),

              Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0XFFe2e2e2),
                  image: DecorationImage(
                      image: AssetImage("Assets/Images/icons bg.png"),
                      fit: BoxFit.fitWidth),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'Assets/Images/Rupeyo-logo-png.png',
                      width: 450,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Divider()),
                          SizedBox(
                          width: 20,
                          ),
                          Center(
                              child: Text(
                            "Log in or Sign up",
                            style: TextStyle(fontSize: 13),
                          )),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const Row(children: <Widget>[
              //   Expanded(
              //     child: Divider(
              //       color: Color(0XFFe8e8e8),
              //     ),
              //   ),
              //   SizedBox(
              //     width: 10,
              //   ),
              //   Text(
              //     "Log in Or SignUp",
              //   ),
              //   SizedBox(
              //     width: 10,
              //   ),
              //   Expanded(
              //       child: Divider(
              //     color: Color(0XFFe8e8e8),
              //   )),
              // ]),
              const SizedBox(
                height: 30,
              ),
              // const Text(
              //   "We have sent a verification code to \n +91 9876543210",
              //   style: TextStyle(
              //   fontSize: 12,
              //   fontWeight: FontWeight.normal,
              //   color: Colors.black,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: SizedBox(
                  width: 400,
                  height: 42,
                  child: Container(
                    //padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0Xffeeeeee),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: InternationalPhoneNumberInput(
                            initialValue: number,
                            selectorConfig: const SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET),
                            onInputChanged: (PhoneNumber phoneNumber) {
                              print(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },
                            ignoreBlank: false,
                            textFieldController: phoneNumberController,
                            formatInput: true,
                            cursorColor: Colors.black,
                            inputDecoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 15, left: 0),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 97,
                          top: 2,
                          child: Container(
                            height: 45,
                            width: 1,
                            color: Colors.black.withOpacity(0.13),
                          ),
                        )

                        // _textFieldOTP(first: true, last: false),
                        // const SizedBox(width: 10,),
                        // _textFieldOTP(first: false, last: false),
                        // const SizedBox(width: 10,),
                        // _textFieldOTP(first: false, last: false),
                        // const SizedBox(width: 10,),
                        // _textFieldOTP(first: false, last: false),
                        // const SizedBox(width: 10,),
                        // _textFieldOTP(first: false, last: false),
                        // const SizedBox(width: 10,),
                        // _textFieldOTP(first: false, last: true),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorsField.buttonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpVerification()));
                    // setState(() {
                    //   loading = true;
                    // });
                    // auth.verifyPhoneNumber(
                    //     phoneNumber: phoneNumberController.text,
                    //     verificationCompleted: (_) {
                    //       setState(() {
                    //         loading = false;
                    //       });
                    //       Utils().toastMessage('Otp Sent Successfully');
                    //     },
                    //     verificationFailed: (e) {
                    //       Utils().toastMessage(e.toString());
                    //       setState(() {
                    //         loading = false;
                    //       });
                    //     },
                    //     codeSent: (String verificationId, int? token) {
                    //       setState(() {
                    //         loading = false;
                    //       });
                    //       Navigator.push(
                    //       context,
                    //           MaterialPageRoute(
                    //               builder: (context) => OtpVerification(
                    //                     verificationId: verificationId,
                    //                   )));
                    //     },
                    //     codeAutoRetrievalTimeout: (e) {
                    //       setState(() {
                    //         loading = false;
                    //       });
                    //       Utils().toastMessage(e.toString());
                    //     });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 356,
              //   height: 42,
              //   child: ElevatedButton(
              //       onPressed: () {
              //       Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //       builder: (context) => const OtpVerification()),
              //       );
              //     },
              //     style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(
              //     const Color(0XFFDF2C25)),
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //     RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(5.0),
              //         ),
              //       ),
              //     ),
              //     child: const Padding(
              //       padding: EdgeInsets.all(10.0),
              //       child: Text(
              //         'Continue',
              //         style: TextStyle(fontSize: 16, color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 28),
              const PrivacyPolicy(),
              const SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Powered By ",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                        //Spacer(),
                        Text(
                          "Crewman Solution Private Limited",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: ColorsField.MainColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 15,
        // ),
        // PrivacyPolicy(),
        // const Row(
        //   children: [
        //     Expanded(
        //       child: Padding(
        //         padding: EdgeInsets.only(left: 25),
        //         child: Text(
        //           "Didn't get the OTP?",
        //           style: TextStyle(
        //             fontSize: 15,
        //             fontWeight: FontWeight.normal,
        //             color: Colors.black,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //       ),
        //     ),
        //     //Spacer(),
        //      Padding(
        //       padding: EdgeInsets.only(right: 60),
        //        child: Text(
        //                      "Resend SMS in 20s",
        //                      style: TextStyle(
        //                        fontSize: 13,
        //                        fontWeight: FontWeight.normal,
        //                        color: Colors.black54,
        //                      ),
        //                      textAlign: TextAlign.center,
        //                    ),
        //      ),
        //    ],
        //  ),
        //  const SizedBox(
        //   height: 30,
        //  ),
        //  const Padding(
        //   padding: EdgeInsets.only(left: 35),
        //   child: Row(
        //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //       Text(
        //           "Powered By",
        //           style: TextStyle(
        //           fontSize: 13,
        //           fontWeight: FontWeight.normal,
        //           color: Colors.black54,
        //         ),
        //         //textAlign: TextAlign.center,
        //       ),
        //        //Spacer(),
        //        SizedBox(width: 5,),
        //        Text("Crewman Solution Private Limited",style: TextStyle(
        //           fontSize: 13,
        //           fontWeight: FontWeight.normal,
        //           color: Color(0XFFDF2C25),
        //         ),)
        //     ],
        //   ),
        //  ),
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //final auth = FirebaseAuth.instance;
    final phoneNumberController = TextEditingController();
    //Classes

    PhoneNumber number = PhoneNumber(isoCode: 'IN');
    return Animate(
      effects: const [FadeEffect(duration: Duration(milliseconds: 1050))],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorsField.background,
        body: SafeArea(
          // child: Padding(
          //   padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: GestureDetector(
                //     onTap: () => Navigator.pop(context),
                //     child: Icon(
                //       Icons.arrow_back,
                //       size: 32,
                //       color: Colors.black54,
                //     ),
                //   ),
                // ),

                Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: ColorsField.borderColors,
                    image: DecorationImage(
                        image: AssetImage("Assets/Images/icons bg.png"),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'Assets/Images/Rupeyo-logo-png.png',
                        width: 250,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 39,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Divider()),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Text(
                            "Log in or Sign up",
                            style: TextStyle(fontSize: 13),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ],
                  ),
                ),
                // const Row(children: <Widget>[
                //   Expanded(
                //     child: Divider(
                //       color: Color(0XFFe8e8e8),
                //     ),
                //   ),
                //   SizedBox(
                //     width: 10,
                //   ),
                //   Text(
                //     "Log in Or SignUp",
                //   ),
                //   SizedBox(
                //     width: 10,
                //   ),
                //   Expanded(
                //       child: Divider(
                //     color: Color(0XFFe8e8e8),
                //   )),
                // ]),
                const SizedBox(
                  height: 30,
                ),
                // const Text(
                //   "We have sent a verification code to \n +91 9876543210",
                //   style: TextStyle(
                //   fontSize: 12,
                //   fontWeight: FontWeight.normal,
                //   color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                const SizedBox(
                  height: 0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 51,
                        child: Container(
                          //padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0Xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: InternationalPhoneNumberInput(
                                  initialValue: number,
                                  selectorConfig: const SelectorConfig(
                                      selectorType:
                                          PhoneInputSelectorType.BOTTOM_SHEET),
                                  onInputChanged: (PhoneNumber phoneNumber) {
                                    print(number.phoneNumber);
                                  },
                                  onInputValidated: (bool value) {
                                    print(value);
                                  },
                                  ignoreBlank: false,
                                  textFieldController: phoneNumberController,
                                  formatInput: true,
                                  cursorColor: Colors.black,
                                  inputDecoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 15, left: 0),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 97,
                                top: 2,
                                child: Container(
                                  height: 45,
                                  width: 1,
                                  color: Colors.black.withOpacity(0.13),
                                ),
                              )

                              // _textFieldOTP(first: true, last: false),
                              // const SizedBox(width: 10,),
                              // _textFieldOTP(first: false, last: false),
                              // const SizedBox(width: 10,),
                              // _textFieldOTP(first: false, last: false),
                              // const SizedBox(width: 10,),
                              // _textFieldOTP(first: false, last: false),
                              // const SizedBox(width: 10,),
                              // _textFieldOTP(first: false, last: false),
                              // const SizedBox(width: 10,),
                              // _textFieldOTP(first: false, last: true),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 42,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorsField.buttonColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OtpVerification()));
                            // setState(() {
                            //   loading = true;
                            // });
                            // auth.verifyPhoneNumber(
                            //     phoneNumber: phoneNumberController.text,
                            //     verificationCompleted: (_) {
                            //       setState(() {
                            //         loading = false;
                            //       });
                            //       Utils().toastMessage('Otp Sent Successfully');
                            //     },
                            //     verificationFailed: (e) {
                            //       Utils().toastMessage(e.toString());
                            //       setState(() {
                            //         loading = false;
                            //       });
                            //     },
                            //     codeSent: (String verificationId, int? token) {
                            //       setState(() {
                            //         loading = false;
                            //       });
                            //       Navigator.push(
                            //       context,
                            //           MaterialPageRoute(
                            //               builder: (context) => OtpVerification(
                            //                     verificationId: verificationId,
                            //                   )));
                            //     },
                            //     codeAutoRetrievalTimeout: (e) {
                            //       setState(() {
                            //         loading = false;
                            //       });
                            //       Utils().toastMessage(e.toString());
                            //     });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Continue',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 356,
                //   height: 42,
                //   child: ElevatedButton(
                //       onPressed: () {
                //       Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //       builder: (context) => const OtpVerification()),
                //       );
                //     },
                //     style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(
                //     const Color(0XFFDF2C25)),
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //     RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //     child: const Padding(
                //       padding: EdgeInsets.all(10.0),
                //       child: Text(
                //         'Continue',
                //         style: TextStyle(fontSize: 16, color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 28),
                const PrivacyPolicy(),
                const SizedBox(height: 0),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Powered By ",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                        //Spacer(),
                        Text(
                          "Crewman Solution Private Limited",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: ColorsField.MainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 15,
          // ),
          // PrivacyPolicy(),
          // const Row(
          //   children: [
          //     Expanded(
          //       child: Padding(
          //         padding: EdgeInsets.only(left: 25),
          //         child: Text(
          //           "Didn't get the OTP?",
          //           style: TextStyle(
          //             fontSize: 15,
          //             fontWeight: FontWeight.normal,
          //             color: Colors.black,
          //           ),
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ),
          //     //Spacer(),
          //      Padding(
          //       padding: EdgeInsets.only(right: 60),
          //        child: Text(
          //                      "Resend SMS in 20s",
          //                      style: TextStyle(
          //                        fontSize: 13,
          //                        fontWeight: FontWeight.normal,
          //                        color: Colors.black54,
          //                      ),
          //                      textAlign: TextAlign.center,
          //                    ),
          //      ),
          //    ],
          //  ),
          //  const SizedBox(
          //   height: 30,
          //  ),
          //  const Padding(
          //   padding: EdgeInsets.only(left: 35),
          //   child: Row(
          //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //       Text(
          //           "Powered By",
          //           style: TextStyle(
          //           fontSize: 13,
          //           fontWeight: FontWeight.normal,
          //           color: Colors.black54,
          //         ),
          //         //textAlign: TextAlign.center,
          //       ),
          //        //Spacer(),
          //        SizedBox(width: 5,),
          //        Text("Crewman Solution Private Limited",style: TextStyle(
          //           fontSize: 13,
          //           fontWeight: FontWeight.normal,
          //           color: Color(0XFFDF2C25),
          //         ),)
          //     ],
          //   ),
          //  ),
        ),
      ),
    );
  }
}
