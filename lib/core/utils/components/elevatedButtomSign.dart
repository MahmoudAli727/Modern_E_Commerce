import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';

class BuildButtom extends StatelessWidget {
  const BuildButtom({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.09,
            vertical: MediaQuery.of(context).size.height * 0.024),
        child: Text(
          text,
          style: TextStyle(
            color: color != kPrimaryColor ? kSecondaryColor : Colors.white,
          ),
        ),
      ),
    );
  }
}
