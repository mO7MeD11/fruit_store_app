import 'package:flutter/material.dart';

import 'package:pro2/home/home_body.dart';
import 'package:pro2/views/splash.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
         
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: "person",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black),
            label: "Menu",
          ),
        ],
      ),

      body: HomeBody(),
    );
  }
}
