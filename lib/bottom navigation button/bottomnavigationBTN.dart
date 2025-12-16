import 'package:flutter/material.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/search%20screen/search_screen.dart';
import 'package:stylish_project/setting%20screen/setting_screen.dart';
import 'package:stylish_project/view/homescreen/homescreen.dart';
import 'package:stylish_project/wishlist%20screen/wishlist_screen.dart';

class Bottomnavigationbtn extends StatefulWidget {
  const Bottomnavigationbtn({super.key});

  @override
  State<Bottomnavigationbtn> createState() => _BottomnavigationbtnState();
}

class _BottomnavigationbtnState extends State<Bottomnavigationbtn> {
  int selectedscreen = 0;
  List screen = [
    Homescreen(),
    WishlistScreen(),
    SearchScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.white,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        child: Icon(Icons.shopping_cart_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screen[selectedscreen],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedscreen,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          selectedscreen = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Wishlist",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_outlined),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
