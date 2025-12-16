import 'package:flutter/material.dart';

import 'package:stylish_project/core/constant/color_constant.dart';

class customlogin extends StatelessWidget {
  const customlogin({super.key, required this.name, this.onTap});
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConstant.red,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 55,
        width: double.infinity,

        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorConstant.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
