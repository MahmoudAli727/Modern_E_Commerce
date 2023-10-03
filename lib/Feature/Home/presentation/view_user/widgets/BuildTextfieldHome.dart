import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextField_Home extends StatelessWidget {
  const TextField_Home({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: hintText,
              fillColor: const Color(0xffF5F6FA),

              // fillColor: Color(0xff8F959E),
              filled: true,
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  "assets/Icons/Search.svg",
                ),
              ),
              hintStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff8F959E))),
        ),
      ),
    );
  }
}
