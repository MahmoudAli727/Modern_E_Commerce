import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddReview_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/ReviewsItem.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet_Body extends StatelessWidget {
  const Wallet_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const CustomAppBar(text: "Reviews"),
              const SizedBox(height: 25),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "245 Reviews",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1D1E20)),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const Text("4.8",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff1D1E20))),
                          SvgPicture.asset("assets/Icons/Star.svg")
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddReview_view.routeName);
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xffFF7043),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 12),
                      child: Row(children: [
                        SvgPicture.asset("assets/Icons/Edit Square.svg"),
                        const Text(
                          " Add Review",
                          style: TextStyle(
                            color: Color(0xffFEFEFE),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const ReviewsItem(),
              const ReviewsItem(),
              const ReviewsItem(),
              const ReviewsItem(),
            ],
          ),
        ),
      ),
    );
  }
}
