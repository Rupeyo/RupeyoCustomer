import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/BN.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/BottomBar.dart';
import 'package:rupiyo/Features/Presentation/Widgets/Text_LineBar.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  @override
  Widget build(BuildContext context) {
    //Classes

    //PhoneNumber number = PhoneNumber(isoCode: 'IN');
    //return  bool loading = false;
    //final verifyNumberController = TextEditingController();
    //final auth = FirebaseAuth.instance;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        // child: Padding(
        // padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
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
                      width: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        "Log in or Sign up",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Divider(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We have sent a verification code to \n +91 9876543210",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: true),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Didn't get the OTP?  ",
                            style: TextStyle(
                              fontSize: 12.2,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const Row(
                            //mainAxisAlignment: MainAxisAlig nment.center,
                            children: [
                              Text(
                                "Resend SMS in 20s",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            width: 125,
                            child: Align(
                              alignment: const AlignmentDirectional(1, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      '/Home', ModalRoute.withName('/'));
                                  //   setState(() {
                                  //   loading = true;
                                  //   }
                                  //   );
                                  //   final credential =
                                  //   PhoneAuthProvider.credential(
                                  //   smsCode: verifyNumberController.text.toString(),
                                  //   verificationId: widget.verificationId,
                                  // );
                                  // try {
                                  //   await auth.signInWithCredential(credential);
                                  //   // ignore: use_build_context_synchronously
                                  //   Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) =>
                                  //               const BottomBar()));
                                  // } catch (e) {
                                  //   setState(() {
                                  //     loading = false;
                                  //   }
                                  //   );
                                  //   Utils().toastMessage(e.toString());
                                  // }
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0XFFDF2C25),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                //child: const Padding(
                                //padding: EdgeInsets.all(10.0),
                                child: const Text(
                                  'Verify',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ), // with this line you get spaceBetween, after commenting will appear only in start and center side
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              const SizedBox(
                height: 200,
              ),
              const Padding(
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
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      "Crewman Solution Private Limited",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFFDF2C25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 49,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          // controller: verifyNumberController,
          autofocus: true,
          // onChanged: (value) {
          //   if (value.length == 1 && last == false) {
          //     FocusScope.of(context).nextFocus();
          //   }
          //   if (value.isEmpty && first == false) {
          //     FocusScope.of(context).previousFocus();
          //   }
          // },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(6)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
    );
  }
}

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({super.key});

  @override
  State<NarrowLayout> createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  //bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        // child: Padding(
        // padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
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
                      width: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextWithLine(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "We have sent a verification code to \n +91 9876543210",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: false),
                          const SizedBox(
                            width: 10,
                          ),
                          _textFieldOTP(first: true, last: true),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Didn't get the OTP?  ",
                            style: TextStyle(
                              fontSize: 12.2,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const Row(
                            //mainAxisAlignment: MainAxisAlig nment.center,
                            children: [
                              Text(
                                "Resend SMS in 20s",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            width: 125,
                            child: Align(
                              alignment: const AlignmentDirectional(1, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const BN()));
                                  //   setState(() {
                                  //   loading = true;
                                  //   }
                                  //   );
                                  //   final credential =
                                  //   PhoneAuthProvider.credential(
                                  //   smsCode: verifyNumberController.text.toString(),
                                  //   verificationId: widget.verificationId,
                                  // );
                                  // try {
                                  //   await auth.signInWithCredential(credential);
                                  //   // ignore: use_build_context_synchronously
                                  //   Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) =>
                                  //               const BottomBar()));
                                  // } catch (e) {
                                  //   setState(() {
                                  //     loading = false;
                                  //   }
                                  //   );
                                  //   Utils().toastMessage(e.toString());
                                  // }
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    const Color(0XFFDF2C25),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                //child: const Padding(
                                //padding: EdgeInsets.all(10.0),
                                child: const Text(
                                  'Verify',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ), // with this line you get spaceBetween, after commenting will appear only in start and center side
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 0),
              //   const PrivacyPolicy(),
              //   const SizedBox(height: 0),
              // SizedBox(
              //   height: 15,
              // ),
              const SizedBox(
                height: 63,
              ),
              const Padding(
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
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      "Crewman Solution Private Limited",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Color(0XFFDF2C25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 49,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          //controller: verifyNumberController,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(6)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
    );
  }
}
