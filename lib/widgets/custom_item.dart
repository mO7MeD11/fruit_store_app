import 'package:flutter/material.dart';
import 'package:pro2/models/item_model.dart';

class custom_item extends StatelessWidget {
  const custom_item({super.key, required this.item, required this.onPressed,required this.icon,
  });
  final Icon icon;
  final ItemModel item;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffffffff),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Color(0xffF6F6F6),
                    width: 130,
                    height: 120,
                    child: Image.asset(item.image),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFFFFF),
                    ),
                    child: IconButton(
                      onPressed: onPressed,
                      icon: icon,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                item.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 8),
                  Text(item.rate),
                ],
              ),
              Text(
                item.price,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
