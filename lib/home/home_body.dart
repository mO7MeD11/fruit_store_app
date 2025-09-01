import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pro2/models/category_model.dart';
import 'package:pro2/models/item_model.dart';
import 'package:pro2/widgets/custom_container.dart';
import 'package:pro2/widgets/custom_item.dart';

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

  List<ItemModel> itemsModel = [
    ItemModel(
      rate: '4.8 (287)',
      price: '\$2.99',
      name: 'Banana',
      image: 'assets/image/Banana.png',
    ),
    ItemModel(
      rate: '2.4 (217)',
      price: '\$24.99',
      name: 'Pepper',
      image: 'assets/image/Pepper.png',
    ),
    ItemModel(
      rate: '2.4 (217)',
      price: '\$24.99',
      name: 'Pepper',
      image: 'assets/image/image 44 (3).png',
    ),
    ItemModel(
      rate: '2.4 (217)',
      price: '\$23.99',
      name: 'Pepper',
      image: 'assets/image/orange.png',
    ),
    ItemModel(
      rate: '2.4 (217)',
      price: '\$24.99',
      name: 'orange',
      image: 'assets/image/orange.png',
    ),
    ItemModel(
      rate: '2.4 (217)',
      price: '\$24.99',
      name: 'Pepper',
      image: 'assets/image/image 44 (1).png',
    ),
  ];

  List<ItemModel> basketList = [];

  void toggleSelection(ItemModel product) {
    setState(() {
      if (basketList.contains(product)) {
        basketList.remove(product);
      } else {
        basketList.add(product);
      }
    });
  }

  bool isSelected(itemsModel) => basketList.contains(itemsModel);

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
            viewportFraction: .7,
            padEnds: false,
            height: 170,
            aspectRatio: 1,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),

        SizedBox(height: 10),

        CarouselSlider.builder(
          itemCount: categoryModel.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffF6F6F6),
                      ),
                      child: Image.asset(
                        categoryModel[itemIndex].image,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(categoryModel[itemIndex].name),
                  ],
                );
              },
          options: CarouselOptions(
            height: 90,
            viewportFraction: 0.3,
            enableInfiniteScroll: false,
            padEnds: false,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Text(
                'Fruits',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff0CA201),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 5),

        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemsModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: custom_item(
                  icon: isSelected(itemsModel[index])
                      ? Icon(Icons.delete)
                      : Icon(Icons.add),
                  item: itemsModel[index],
                  onPressed: () {
                    toggleSelection(itemsModel[index]);
                  },
                ),
              );
            },
          ),
        ),

        if (basketList.isNotEmpty)
          CustomContainer(basket: basketList, number: basketList.length),
      ],
    );
  }
}
