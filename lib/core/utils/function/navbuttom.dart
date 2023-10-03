// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';

Widget BuildButtomNavBar(BuildContext context, {required String text}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: double.infinity,
    decoration: const BoxDecoration(color: kPrimaryColor),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.014,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
