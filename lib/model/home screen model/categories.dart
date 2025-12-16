import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.imagepath,
    required this.category,
  });
  final String imagepath;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 28, backgroundImage: NetworkImage(imagepath)),
        Text(category),
      ],
    );
  }
}
