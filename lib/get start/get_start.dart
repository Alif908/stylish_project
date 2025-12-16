import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_project/Custom%20text/custom_login.dart';
import 'package:stylish_project/bottom%20navigation%20button/bottomnavigationBTN.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';
import 'package:stylish_project/view/homescreen/homescreen.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Imageconstant.getstart),
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black12,
                Colors.black38,
                Colors.black87,
                Colors.black,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "You want Authentic, here you go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 34,
                    color: ColorConstant.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Find it here, buy it now!",
                  style: TextStyle(color: ColorConstant.white),
                ),
                SizedBox(height: 80),
                customlogin(
                  name: "Get started",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigationbtn(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                SizedBox(height: 34),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
