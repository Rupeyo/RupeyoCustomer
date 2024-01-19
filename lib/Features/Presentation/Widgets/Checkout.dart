import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PaymentProcedure extends StatefulWidget {
  const PaymentProcedure({super.key});

  @override
  State<PaymentProcedure> createState() => _PaymentProcedureState();
}

class _PaymentProcedureState extends State<PaymentProcedure> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0XFFDF2C25),
        title: const Center(
            child: Text(
          'Payment Procedure',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        )),
        leading: InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/', ModalRoute.withName('/Home'));
          },
          child: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stepper(
        //connectorColor: const MaterialStatePropertyAll(Colors.black26),
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if (isLastStep) {
            print('Completed');
          } else {
            setState(() => currentStep += 1);
          }
        },
        onStepCancel:
            currentStep == 0 ? null : () => setState(() => currentStep -= 1),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: const Text(
            'Shipping',
            style: TextStyle(fontSize: 14),
          ),
          content: const Shipping(),
        ),
        Step(
          isActive: currentStep >= 1,
          title: const Text(
            'Payment',
            style: TextStyle(fontSize: 14),
          ),
          content: const Payment(),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text(
            'Review',
            style: TextStyle(fontSize: 14),
          ),
          content: const Review(),
        ),
      ];
}

class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            children: [
              Row(
                children: [
                  Text(
                    'SHIPPING ADDRESS',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'On This address will be delivered your order.',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const Row(
                children: [
                  Text('CHOOSE A COUNTRY'),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('CITY'), Text('POSTAL CODE')],
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 90,
                      width: MediaQuery.sizeOf(context).width,
                      child: TextFormField(
                        textAlign: TextAlign.center,

                        //initialValue: 'Type Your City',
                        decoration: const InputDecoration(
                          hintText: 'Type Your City',
                          //labelText: 'Label text',
                          //errorText: 'Error message',
                          border: OutlineInputBorder(),
                          // suffixIcon: Icon(
                          //   Icons.error,
                          // ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 90,
                      width: MediaQuery.sizeOf(context).width,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        //initialValue: '------------',
                        decoration: const InputDecoration(
                          hintText: '------------',
                          //labelText: 'Label text',
                          //errorText: 'Error message',
                          border: OutlineInputBorder(),
                          // suffixIcon: Icon(
                          //   Icons.error,
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Column(
            children: [
              const Row(
                children: [
                  Text('PHONE NUMBER'),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 90,
                      width: MediaQuery.sizeOf(context).width,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        //initialValue: '------------',
                        decoration: const InputDecoration(
                          hintText: '+91 ------------------',
                          //labelText: 'Label text',
                          //errorText: 'Error message',
                          border: OutlineInputBorder(),
                          // suffixIcon: Icon(
                          //   Icons.error,
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Column(
            children: [
              CheckboxListTile(
                  title: const Text(
                    'Subscribe To Our Newsletter',
                    style: TextStyle(fontSize: 13),
                  ),
                  value: checkBoxValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      checkBoxValue = newValue!;
                    });
                  })
            ],
          ),
          const SizedBox(
            height: 70,
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(CupertinoIcons.bag),
                        SizedBox(width: 20,),
                        Text('Order summary(4)'),
                      ],
                    ),
                    Row(
                          children: [Text('₹35.00')],
                        ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
  return const Column();
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
