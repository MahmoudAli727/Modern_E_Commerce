import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewsItem extends StatelessWidget {
  const ReviewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/threei.png",
              ),
              radius: 18,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Jenny Wilson",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20)),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/clock.svg"),
                    const Text(
                      " 13 Sep, 2020",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Color(0xff1D1E20),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "rating",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                SvgPicture.asset("assets/Icons/Star.svg"),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
          style: TextStyle(
            fontSize: 15,
            color: kSecondaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
