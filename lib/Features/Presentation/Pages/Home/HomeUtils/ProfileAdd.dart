import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  final _EmailController = TextEditingController();
  final _NameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  // Color red is button is disabled and green is enabled. you can change as per you requirement.
  final successColor = MaterialStateProperty.all(const Color(0XFFDF2C25));
  final errorColor = MaterialStateProperty.all(Colors.grey.shade300);
  final decorationName = const InputDecoration(
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    isCollapsed: true,
    hintTextDirection: TextDirection.ltr,
    hintText: "Enter Your Name",
    filled: true,
    fillColor: Color.fromARGB(255, 236, 236, 236),
    hintStyle:
        TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)),
  ); 
  final decorationRow = const InputDecoration(
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    isCollapsed: true,
    hintText: "Enter Your Email",
    filled: true,
    fillColor: Color.fromARGB(255, 236, 236, 236),
    hintStyle:
        TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)),
  );
  final richBotton = const TextStyle(
    color: Color.fromARGB(255, 117, 117, 117),
    fontSize: 11,
  ); // textAlign: TextAlign.center;
  final text = const TextStyle(color: Colors.grey, fontSize: 11);
  bool isValid = false;
  @override
  void initState() {
    super.initState();
    _EmailController.addListener(() {
      if (_EmailController.text.isEmpty) {
        setState(() {
          isValid = false;
        });
      } else {
        setState(() {
          isValid = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
           Navigator.of(context).pop();
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 67,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea( 
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Name*'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _NameController,
                      decoration: decorationName,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Form(
              key: _formKey1,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Email Address *'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _EmailController,
                      decoration: decorationRow,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter You're Email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        onPressed: !isValid
                            ? null
                            : () {
                                // go  further.
                              },
                        style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                            backgroundColor: isValid ? successColor : errorColor,
                            minimumSize: MaterialStateProperty.all(
                                const Size.fromHeight(45)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10))),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
