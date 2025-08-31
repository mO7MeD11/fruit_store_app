import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pro2/models/category_model.dart';

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

  List<CategoryModel> categoryModel = [
    CategoryModel(name: 'Fruits', image: 'assets/image/category4.png'),
    CategoryModel(name: 'Milk & egg', image: 'assets/image/category3.png'),
    CategoryModel(name: 'Beverages', image: 'assets/image/category2.png'),
    CategoryModel(name: 'Laundry', image: 'assets/image/category1.png'),
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

        SizedBox(height: 12),

        CarouselSlider.builder(
          itemCount: categoryModel.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffF6F6F6),
                      ),
                      child: Image.asset(
                        categoryModel[itemIndex].image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(categoryModel[itemIndex].name),
                  ],
                );
              },
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.3,
            enableInfiniteScroll: false,
            padEnds: false,
          ),
        ),
      ],
    );
  }
}
