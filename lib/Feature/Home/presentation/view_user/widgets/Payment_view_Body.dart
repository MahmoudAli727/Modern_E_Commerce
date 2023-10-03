import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddNewCard_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Payment_view_Body extends StatelessWidget {
  const Payment_view_Body({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> cardImages = [
      "assets/images/Card 1.png",
      "assets/images/Card 2.png"
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(text: "Payment"),
              const SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        cardImages.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: SizedBox(
                                  width: 250,
                                  child: Image.asset(cardImages[index])),
                            ))
                  ],
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AddNewCard_view.routeName);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kPrimaryColor),
                    color: const Color(0xffF6F2FF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Icons/Plus.svg"),
                      const Text(
                        " Add new card",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Card Owner",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff1D1E20),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Mrh Raju",
                      fillColor: Color(0xffF5F6FA),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8F959E))),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Card Number",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff1D1E20),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "5254 7634 8734 7690",
                      fillColor: Color(0xffF5F6FA),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8F959E))),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "EXP",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff1D1E20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const SizedBox(
                            width: 155,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "24/24",
                                  filled: true,
                                  fillColor: Color(0xffF5F6FA),
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff8F959E))),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(width: 15),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff1D1E20),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const SizedBox(
                            width: 155,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "7763",
                                  fillColor: Color(0xffF5F6FA),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff8F959E))),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Save card info",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/Icons/Switch ON.svg",
                  )
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
