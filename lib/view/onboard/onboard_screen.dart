import 'package:flutter/material.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';
import 'package:stylish_project/sign%20in/sign_in.dart';
import 'package:stylish_project/view/homescreen/homescreen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  List data = [
    {
      "image": Imageconstant.onboardimg1,
      "title": "Choose Product",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": Imageconstant.onboardimg2,
      "title": "Choose Product",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": Imageconstant.onboardimg3,
      "title": "Choose Product",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              text: "${currentindex + 1}",
              children: [
                TextSpan(
                  style: TextStyle(
                    color: Color(0xffA0A0A1),
                    fontWeight: FontWeight.bold,
                  ),
                  text: "/${data.length}",
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
                (route) => false,
              );
            },
            child: Text(
              "skip",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(data[currentindex]["image"], width: 300, height: 300),
            Center(
              child: Column(
                children: [
                  Text(
                    data[currentindex]["title"],
                    style: TextStyle(
                      color: ColorConstant.boldcenter,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    data[currentindex]["desc"],
                    style: TextStyle(
                      color: ColorConstant.jrcenter,
                      letterSpacing: 5,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          if (currentindex != 0)
            TextButton(
              onPressed: () {
                if (currentindex > 0) {
                  currentindex--;
                  setState(() {});
                }
              },
              child: Text(
                "prev",
                style: TextStyle(
                  color: ColorConstant.jrcenter,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Spacer(),
          TextButton(
            onPressed: () {
              if (currentindex < data.length - 1) {
                currentindex++;
                setState(() {});
              }
            },
            child: Text(
              currentindex == 2 ? "Get Start" : "Next",
              style: TextStyle(
                color: ColorConstant.boldcenter,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          
          ),
        ],
      ),
    );
  }
}
