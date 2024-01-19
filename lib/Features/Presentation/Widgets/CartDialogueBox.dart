import 'package:flutter/material.dart';

void showCartDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Cart Items"),
          content: SizedBox(
            width: double.minPositive,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('Item 1'),
                  subtitle: const Text('Price: \$productPrice'),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.remove)),
                ),
                const Divider(),
                const Text("Payment Options", style: TextStyle(fontSize: 18)),
                ListTile(
                  title: const Text('Credit Card'),
                  leading: Radio(
                      value: "Credit Card",
                      groupValue: "Selected Payment Option",
                      onChanged: (value) {
                        //set The Selected Payment Option
                      }),
                ),
                ListTile(
                    title: const Text("PayPal"),
                    leading: Radio(
                    value: "PayPal",
                    groupValue: "selectedPaymentOption",
                    onChanged: (value) {
                      // Set the selected payment option
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform payment processing here
                // You can call a function to handle the payment process
                // Make sure to use the selected payment option
              },
              child: const Text("Checkout"),
            ),
          ],
        );
      });
}
