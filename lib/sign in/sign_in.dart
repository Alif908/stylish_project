import 'package:flutter/material.dart';
import 'package:stylish_project/Custom%20text/custom_login.dart';
import 'package:stylish_project/Custom%20text/custom_text.dart';
import 'package:stylish_project/Custom%20text/social_media.dart';
import 'package:stylish_project/Forgat%20password/forgatPassword_screen.dart';
import 'package:stylish_project/core/constant/color_constant.dart';
import 'package:stylish_project/core/constant/imageconstant.dart';
import 'package:stylish_project/get%20start/get_start.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final userNameformkey = GlobalKey<FormState>();
  final passformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 19),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome \n Back!",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 36),
                CustomText(
                  formkey: userNameformkey,
                  hint: "Username or Email",
                  icon: Icons.person,
                  validator: (value) {
                    if (value != null && value.length >= 3) {
                      return null;
                    }
                    return "enter a valid username";
                  },
                ),
                CustomText(
                  formkey: passformkey,
                  bottompadding: 9,
                  obscureText: true,
                  hint: "Password",
                  icon: Icons.lock,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                  validator: (value) {
                    if (value != null && value.length >= 6) {
                      return null;
                    }
                    return "enter a valid password";
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgatpasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: ColorConstant.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 52),

                customlogin(
                  name: "Login",
                  onTap: () {
                    if (userNameformkey.currentState!.validate() &&
                        passformkey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => GetStart()),
                        (route) => false,
                      );
                    }
                  },
                ),

                SizedBox(height: 72),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 399),
                  child: Row(
                    spacing: 10,
                    children: [
                      socialmedia(socialmediaimg: Imageconstant.google),
                      socialmedia(socialmediaimg: Imageconstant.apple),
                      socialmedia(socialmediaimg: Imageconstant.facebook),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
