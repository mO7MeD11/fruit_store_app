import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List property = [
    'assets/image/Slider1.png',
    'assets/image/Slider2.png',
    'assets/image/Slider3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: property.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Image.asset(property[itemIndex]),
          options: CarouselOptions(
            height: 222,
            aspectRatio: 1,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
      ],
    );
  }
}
