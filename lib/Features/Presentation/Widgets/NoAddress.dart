import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddressInformation.dart';

class NoAddresses extends StatelessWidget {
  const NoAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 60,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Text('Addresses', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Assets/Images/noAddress.png'))),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No Address Added',
                    style: TextStyle(fontSize: 20),
                  ),
                  // RichText(
                  //     text: const TextSpan(
                  //         style: TextStyle(
                  //           wordSpacing: 0.2,
                  //         ),
                  //         children: [
                  //       TextSpan(text: 'No Address Added'),
                  //       TextSpan(text: 'To see The saved address here,add your work or home address'),
                  //     ]))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'To see The saved address here, add your work or\n home address',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 0.4,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FittedBox(
                child: SizedBox(
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      maximumSize: const Size.fromWidth(370),
                      backgroundColor: const Color(0XFFDF2C25),
                    ),
                    onPressed: () {
                      Navigator.of(context).push<void>(_NoAddressRoute());
                    },
                    child: const Text(
                      'Add New Address',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _NoAddressRoute() {
  return PageRouteBuilder<SlideTransition>(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AddressInformation(),
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
