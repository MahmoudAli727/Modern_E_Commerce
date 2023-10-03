import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget categoryCard({required String text, required String icon}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: const BoxDecoration(
          color: Color(0xffF5F6FA),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 30,
          height: 32,
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: SvgPicture.asset(
            icon,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff1D1E20)),
        )
      ]),
    ),
  );
}
