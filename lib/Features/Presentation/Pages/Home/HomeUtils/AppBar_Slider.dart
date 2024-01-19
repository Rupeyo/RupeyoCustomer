// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousalWithoutIndicator extends StatefulWidget {
  const CarousalWithoutIndicator({super.key});

  @override
  State<CarousalWithoutIndicator> createState() =>
      _CarousalWithoutIndicatorState();
}

class _CarousalWithoutIndicatorState extends State<CarousalWithoutIndicator> {
// String? banner = "Assets/Images/banner.png";
// String? banner1 = "Assets/Images/banner1.png";
// String? banner2 = "Assets/Images/banner2.png";
// String? banner3 = "Assets/Images/banner3.png";
// String? banner4 = "Assets/Images/banner4.png";
// String? banner5 = "Assets/Images/banner5.png";

  int current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 3.9,
                viewportFraction: 0.98,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                }),
          ),
        ),

        // Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // children: imgList.asMap().entries.map((entry) {
        //   return GestureDetector(
        //     onTap: () => _controller.animateToPage(entry.key),
        //     child: Container(
        //       width: 8.0,
        //       height: 8.0,
        //       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //           color: (Theme.of(context).brightness == Brightness.dark
        //                   ? Colors.white
        //                   : const Color(0XFFDF2C25))
        //               .withOpacity(current == entry.key ? 0.9 : 0.4)),
        //     ),
        //   );
        // }).toList(),
        //     ),
      ],
    );
  }
}

final List<String> imgList = [
  'Assets/Images/SliderImage1.png',
  'Assets/Images/SliderImage2.png',
  // 'Assets/Images/banner3.png',
  // 'Assets/Images/banner4.png',
  // 'Assets/Images/banner5.png',
];
final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(0.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                        //     gradient: LinearGradient(
                        //     colors: [
                        //     Color.fromARGB(200, 0, 0, 0),
                        //     Color.fromARGB(0, 0, 0, 0)
                        //   ],
                        //   begin: Alignment.bottomCenter,
                        //   end: Alignment.topCenter,
                        // ),
                        ),
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 0.0, horizontal: 6.0),
                    //  child: Text(
                    //  'No. ${imgList.indexOf(item)} image',
                    //   style: const TextStyle(
                    //   color: Colors.white,
                    //   fontSize: 20.0,
                    //   fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ),
                ),
              ],
            )),
      ),
    )
    .toList();
