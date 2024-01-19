import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 12),
              text: "By Continuing, you agree to our ",
            ),
            TextSpan(
                style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 12),
                text: "\nTerms of Service",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url =
                        "https://www.termsfeed.com/blog/sample-terms-and-conditions-template/";
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      await launchUrl(Uri(path: url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
            const TextSpan(
              style: TextStyle(color: Colors.blue),
              text: " ",
            ),
            const TextSpan(
              style: TextStyle(color: Colors.black38),
              text: " ",
            ),
            TextSpan(
                // style: linkText,
                style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 12),
                text: "Privacy Policy",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url =
                        "https://www.termsfeed.com/blog/sample-terms-and-conditions-template/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
            const TextSpan(
              style: TextStyle(color: Colors.black38),
              text: "  ",
            ),
            TextSpan(
                // style: linkText,
                style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 12),
                text: "Content Policy",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url =
                        "https://www.termsfeed.com/blog/sample-terms-and-conditions-template/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
          ]),
        ),
      ),
    );
  }
}
