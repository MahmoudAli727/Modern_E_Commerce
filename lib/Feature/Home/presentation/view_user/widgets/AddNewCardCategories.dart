import 'package:flutter/material.dart';

class AddNewCategoriesCard extends StatefulWidget {
  const AddNewCategoriesCard(
      {super.key, required this.index, required this.icon});
  final int index;
  final String icon;
  @override
  State<AddNewCategoriesCard> createState() => _AddNewCategoriesCardState();
}

class _AddNewCategoriesCardState extends State<AddNewCategoriesCard> {
  int SelectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AddNewCardCategory(widget: widget, index: SelectIndex);
  }
}

class AddNewCardCategory extends StatefulWidget {
  const AddNewCardCategory({
    super.key,
    required this.widget,
    required this.index,
  });

  final AddNewCategoriesCard widget;
  final int index;

  @override
  State<AddNewCardCategory> createState() => _AddNewCardCategoryState();
}

class _AddNewCardCategoryState extends State<AddNewCardCategory> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xffF5F6FA),
        ),
        child: Image.asset(widget.widget.icon),
      ),
    );
  }
}
