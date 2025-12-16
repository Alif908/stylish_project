import 'package:flutter/material.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';

class socialmedia extends StatelessWidget {
  const socialmedia({
    super.key,
    required this.socialmediaimg,
    this.socialmediabutton,
  });
  final String socialmediaimg;
  final Widget? socialmediabutton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => socialmediabutton!),
          );
        },
        child: Column(
          children: [
            Text("- OR Continue with -"),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: BoxBorder.all(color: ColorConstant.red),
              ),
              child: Image.asset(socialmediaimg),
              width: 54,
              height: 54,
            ),
          ],
        ),
      ),
    );
  }
}
