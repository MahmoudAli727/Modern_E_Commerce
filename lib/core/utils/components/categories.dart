import 'package:ecommerce_app_1/core/utils/components/categorycard.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      {'text': "Adidas", "icon": "assets/Icons/Adidas.svg"},
      {'text': "Nike", "icon": "assets/Icons/Vector.svg"},
      {'text': "Fila", "icon": "assets/Icons/fila-9 1.svg"},
      {'text': "Puma", "icon": "assets/Icons/Puma.svg"}
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            categories.length,
            (index) => categoryCard(
              text: categories[index]['text'],
              icon: categories[index]['icon'],
            ),
          ),
        ],
      ),
    );
  }
}
