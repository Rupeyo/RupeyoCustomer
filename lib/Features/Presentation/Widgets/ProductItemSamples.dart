import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductItemSamples extends StatelessWidget {
  const ProductItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'Assets/Images/ccnt.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/ccnt.png'),
          ),
        ],
      ),
    );
  }
}

class AppleImage extends StatelessWidget {
  const AppleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'Assets/Images/apple.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/apple.png'),
          ),
        ],
      ),
    );
  }
}

class KiwiImage extends StatelessWidget {
  const KiwiImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'Assets/Images/kiwi.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/kiwi.png'),
          ),
        ],
      ),
    );
  }
}

class BananaImage extends StatelessWidget {
  const BananaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'Assets/Images/Banana.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/Banana.png'),
          ),
        ],
      ),
    );
  }
}

class BabuGhosaImage extends StatelessWidget {
  const BabuGhosaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'Assets/Images/bbg.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/bbg.png'),
          ),
        ],
      ),
    );
  }
}

class ChickooImage extends StatelessWidget {
  const ChickooImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ImageSlideshow(
        indicatorBottomPadding: 0,
        height: 200,
        indicatorRadius: 3.3,
        indicatorColor: const Color(0XFFDF2C25),
        indicatorBackgroundColor: Colors.grey.shade200,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'Assets/Images/chickoo.png',
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('Assets/Images/chickoo.png'),
          ),
        ],
      ),
    );
  }
}
