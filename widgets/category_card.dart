import 'package:dahariyen_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 180,
        width: 160,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Image.asset(
              category.imageUrl,
              width: 160,
              height: 180,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
