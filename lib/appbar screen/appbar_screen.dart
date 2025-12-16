import 'package:flutter/material.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';

class appbarscreen extends StatelessWidget {
  const appbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 370,
        height: 60,

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Imageconstant.menu),
              Row(
                spacing: 9,
                children: [
                  Image.asset(Imageconstant.froundapplogo, height: 38),
                  Text(
                    "Stylish",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              Image.asset(Imageconstant.profile, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
