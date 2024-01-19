import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ExpandedImage extends StatefulWidget {
  const ExpandedImage({super.key});

  @override
  State<ExpandedImage> createState() => _ExpandedImageState();
}

class _ExpandedImageState extends State<ExpandedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSelector(),
    );
  }
}

class ImageSelector extends StatelessWidget {
  final List<String> imageUrls = [
    'Assets/Images/apple.png',
    'Assets/Images/Banana.png',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FullScreenImageGallery(imageUrls),
              ),
            );
          },
          child: Hero(
            tag: 'imageHero',
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageUrls.first),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FullScreenImageGallery extends StatelessWidget {
  final List<String> imageUrls;
  final int initialIndex;

  FullScreenImageGallery(this.imageUrls, {this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.back,
          color: Colors.white,
        ),
        backgroundColor: Colors.white,
        actions: [
              IconButton(
              onPressed: () {
              Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.clear_fill,
                size: 38,
              )),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PhotoViewGallery.builder(
              itemCount: imageUrls.length,
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(imageUrls[index]),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 5,
                );
              },
              pageController: PageController(initialPage: initialIndex),
              backgroundDecoration: const BoxDecoration(
                color: Colors.white,
              ),
              onPageChanged: (index) {
                // Handle page change
              },
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: PageView.builder(
                itemCount: imageUrls.length,
                controller: PageController(initialPage: initialIndex),
                onPageChanged: (index) {
                  // Handle bottom slider page change
                },
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 160,
                      width: 120,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 5),
                      decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 15.0)],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: InkWell(
                        onTap: () {},
                        child: Hero(
                          tag: 'imageHero',
                          child: Image.asset(
                            imageUrls[index],
                            height: 40,
                            width: 40,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
