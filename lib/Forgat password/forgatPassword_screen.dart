import 'package:flutter/material.dart';
import 'package:stylish_project/Custom%20text/custom_login.dart';
import 'package:stylish_project/Custom%20text/custom_text.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/get%20start/get_start.dart';

class ForgatpasswordScreen extends StatefulWidget {
  const ForgatpasswordScreen({super.key});

  @override
  State<ForgatpasswordScreen> createState() => _ForgatpasswordScreenState();
}

class _ForgatpasswordScreenState extends State<ForgatpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot \n Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.boldcenter,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 32),
              CustomText(hint: "Enter your email address", icon: Icons.email),
              SizedBox(height: 26),
              Container(
                decoration: BoxDecoration(),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "* We will send you a message to set or reset \n your new password",
                  ),
                ),
              ),
              SizedBox(height: 26),
              customlogin(name: "Submit",onTap: () =>ForgatpasswordScreen() ,),
            ],
          ),
        ),
      ),
    );
  }
}
