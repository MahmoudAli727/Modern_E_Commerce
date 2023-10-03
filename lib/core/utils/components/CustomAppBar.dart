import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffF5F6FA)),
              child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: SvgPicture.asset("assets/Icons/Arrow - Left.svg"))),
        ),
        const Spacer(),
        Text(text,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xff1D1E20))),
        const Spacer(),
        const SizedBox(width: 20),
      ],
    );
  }
}
