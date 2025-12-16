import 'package:flutter/material.dart';
import 'package:stylish_project/core/constant/color_constant.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.hint,
    this.icon,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.bottompadding = 31,
    this.validator,
    this.formkey,
  });
  final String hint;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;
  final double bottompadding;
  final Key? formkey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottompadding),
      child: Form(
        key: formkey,
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,

          decoration: InputDecoration(
            label: Text(hint),
            filled: true,
            fillColor: Color(0xffF3F3F3),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xffA8A8A9)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstant.boldcenter),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstant.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstant.boldcenter),
            ),
            prefixIcon: Icon(icon, size: 24, color: Color(0xff626262)),
            suffixIcon: suffixIcon,
          ),
          validator: validator,
        ),
      ),
    );
  }
}
