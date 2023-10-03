// ignore_for_file: camel_case_types

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Start_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/App_colors.dart';
import 'package:ecommerce_app_1/core/utils/components/elevatedButtomSign.dart';
import 'package:flutter/material.dart';

class Sign_view_Body extends StatefulWidget {
  const Sign_view_Body({super.key});

  @override
  State<Sign_view_Body> createState() => _Sign_view_BodyState();
}

class _Sign_view_BodyState extends State<Sign_view_Body> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? AppColors.bottomNavBarDark : kPrimaryColor,
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/smiling-pretty-girl-with-wavy-hairstyle-standing-one-leg-purple-wall-cheerful-brunette-female-model-dancing-white-sneakers-removebg 1.png",
          ),
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.645,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 12),
                  child: Text(
                    "Look Good, Feel Good",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  "Create your individual & unique style and look amazing everyday.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kSecondaryColor),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuildButtom(
                      text: "Men",
                      color: Color(0xffF5F6FA),
                    ),
                    BuildButtom(
                      text: 'Women',
                      color: kPrimaryColor,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Start_view.routeName);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: kSecondaryColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
