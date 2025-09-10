import 'package:flutter/material.dart';

import 'package:stylish_project/view/splash_screen/splash_screen.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: "myapp",
    );
  }
}

void main(List<String> args) {
  runApp(myapp());
}
