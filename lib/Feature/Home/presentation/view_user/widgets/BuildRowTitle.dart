import 'package:flutter/material.dart';

class BuildRowTitle extends StatelessWidget {
  const BuildRowTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff1D1E20),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "View All",
          style: TextStyle(
            color: Color(0xff8F959E),
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
