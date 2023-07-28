import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageCarouselSlider extends StatefulWidget {
  final List<int> itemList;
  const ImageCarouselSlider({super.key, required this.itemList});

  @override
  State<ImageCarouselSlider> createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: .83,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: widget.itemList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
                      fit: BoxFit.fill,
                    ));
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 10,
          child: DotsIndicator(
            dotsCount: widget.itemList.length,
            position: currentIndex,
            decorator: const DotsDecorator(
                size: Size(6, 6),
                activeSize: Size(6, 6),
                spacing: EdgeInsets.only(left: 4, right: 4),
                color: Colors.grey,
                activeColor: Colors.white),
          ),
        )
      ],
    );
  }
}
