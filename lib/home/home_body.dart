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
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            Image.asset('assets/image/Vector (1).png'),
            SizedBox(width: 10),

            Text('61 Hopper street..'),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down, size: 34),
            Spacer(),
            Image.asset('assets/image/Icons.png', width: 30, height: 30),
          ],
        ),
      ),
      body: Column(
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
            ),
          ),
        ],
      ),
    );
  }
}
