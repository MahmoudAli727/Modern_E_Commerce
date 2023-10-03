import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildRowTitle.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details_Body extends StatelessWidget {
  const Details_Body({super.key});
  static String routeName = "/details cart";

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Stack(children: [
            Image.asset(
              data["imagePath"],
              fit: BoxFit.fill,
              width: double.infinity,
              height: 400,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/Icons/Arrow - Left.svg",
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/Icons/Cart.svg"),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 150,
              top: 350,
              child: SvgPicture.asset(
                "assets/Icons/Vector.svg",
                height: 30,
              ),
            ),
          ]),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Text(
                  "Men's Printed Pullover Hoodie",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
                Spacer(),
                Text(
                  "Price",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Text(
                  "Nike Club Fleece",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  r"$120",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  data["imagePath"],
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  data["imagePath"],
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  data["imagePath"],
                  height: 80,
                  width: 80,
                ),
                Image.asset(
                  data["imagePath"],
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Size Guide",
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/Icons/s.svg"),
                SvgPicture.asset("assets/Icons/m.svg"),
                SvgPicture.asset("assets/Icons/l.svg"),
                SvgPicture.asset("assets/Icons/XL.svg"),
                SvgPicture.asset("assets/Icons/2XL.svg"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Description",
                style: TextStyle(
                    color: Color(0xff1D1E20),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text:
                        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: kSecondaryColor,
                    )),
                TextSpan(
                    text: " Read More..",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1D1E20),
                    ))
              ]))),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: BuildRowTitle(
              text: "Reviews",
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(data["imagePath"]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ronald Richards",
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
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: kSecondaryColor,
                )),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1D1E20),
                      ),
                    ),
                    Text(
                      "with VAT,SD",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  r"$125",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1D1E20),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}
