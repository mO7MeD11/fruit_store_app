import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pro2/models/item_model.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.basket,
    required this.number,
  });
  final List<ItemModel> basket;
  final number;

  @override
  Widget build(BuildContext context) {
    log(basket.length.toString());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff0CA201),
        ),

        width: double.infinity,
        height: 70,
        child: Row(
          children: [
            SizedBox(
              width: 210,
              height: 50,
              child: ListView.builder(
                itemCount: basket.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      width: 30,
                      height: 70,
                      child: Image.asset(basket[index].image),
                    ),
                  );
                },
              ),
            ),
            Container(width: 2, height: 40, color: Color(0xffffffff)),
            SizedBox(width: 8),
            Text(
              'View Basket',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 8),
            Badge(
              label: Text(number.toString()),
              textStyle: TextStyle(fontSize: 15, color: Colors.red),
              child: Image.asset(
                'assets/image/Icons.png',
                width: 30,
                height: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
