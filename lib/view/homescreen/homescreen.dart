import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_project/appbar%20screen/appbar_screen.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';
import 'package:stylish_project/model/home%20screen%20model/categories.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(children: [appbarscreen()]),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              build_search(),
              build_featuers(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 16,
                  children: [
                    Categories(
                      imagepath:
                          "https://media.istockphoto.com/id/1296705483/photo/make-up-products-prsented-on-white-podiums-on-pink-pastel-background.jpg?s=1024x1024&w=is&k=20&c=HYjdh-kg1C8Us70Oz9oxg92z4QvkO796J14ZTe2UgOk=",
                      category: "Beauty",
                    ),
                    Categories(
                      imagepath:
                          "https://images.pexels.com/photos/6069081/pexels-photo-6069081.jpeg",
                      category: "Fashion",
                    ),
                    Categories(
                      imagepath:
                          "https://images.pexels.com/photos/1148998/pexels-photo-1148998.jpeg",
                      category: "Kids",
                    ),
                    Categories(
                      imagepath:
                          "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg",
                      category: "Mens",
                    ),
                    Categories(
                      imagepath:
                          "https://images.pexels.com/photos/1065081/pexels-photo-1065081.jpeg",
                      category: "Womens",
                    ),
                    Categories(
                      imagepath:
                          "https://images.pexels.com/photos/5730956/pexels-photo-5730956.jpeg",
                      category: "Shoes",
                    ),
                  ],
                ),
              ),
              build_carouselslider(),
            ],
          ),
        ],
      ),
    );
  }

  Widget build_carouselslider() {
    List imageurl1 = [
      Imageconstant.slider,
      Imageconstant.slider,
      Imageconstant.slider,
    ];
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            imageurl1.length,
            (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(imageurl1[index])),
              ),
            ),
          ),
          options: CarouselOptions(
            height: 280,

            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,

            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              currentindex = index;
              setState(() {});
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
         
        AnimatedSmoothIndicator(
          activeIndex: currentindex,
          count: imageurl1.length,
        ),
      ],
    );
  }

  Container build_featuers() {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "All Featured",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Row(
              spacing: 12,
              children: [
                Container(
                  decoration: BoxDecoration(color: ColorConstant.white),
                  child: Row(
                    spacing: 7,
                    children: [
                      Text(
                        "Sort",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.swap_vert, color: Colors.purple, size: 30),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: ColorConstant.white),
                  child: Row(
                    spacing: 7,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding build_search() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: ColorConstant.white,
          filled: true,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "Search any Product..",
          hintStyle: TextStyle(color: ColorConstant.jrcenter, fontSize: 20),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: ColorConstant.jrcenter),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic_none, color: ColorConstant.jrcenter),
          ),
        ),
      ),
    );
  }
}
