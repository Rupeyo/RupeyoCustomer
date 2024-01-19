import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousalWithIndicator extends StatefulWidget {
  const CarousalWithIndicator({super.key});

  @override
  State<CarousalWithIndicator> createState() => _CarousalWithIndicatorState();
}

class _CarousalWithIndicatorState extends State<CarousalWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              viewportFraction: 0.98,
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : const Color(0XFFDF2C25))
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

final List<String> imgList = [
  'Assets/Images/SliderWithIndicator.png',
  'Assets/Images/SliderWithIndicator2.png',
  'Assets/Images/SliderWithIndicator3.png',
];
final List<Widget> imageSliders = imgList
    .map((item) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: const EdgeInsets.all(0.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                            // gradient: LinearGradient(
                            //   colors: [
                            //     Color.fromARGB(200, 0, 0, 0),
                            //     Color.fromARGB(0, 0, 0, 0)
                            //   ],
                            //   begin: Alignment.bottomCenter,
                            //   end: Alignment.topCenter,
                            // ),
                            ),
                        // padding: const EdgeInsets.symmetric(
                        //     vertical: 4.0, horizontal: 6.0),
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
        ))
    .toList();
