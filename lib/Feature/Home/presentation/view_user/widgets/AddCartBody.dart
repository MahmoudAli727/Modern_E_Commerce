import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Address_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Add_Cart_Body extends StatelessWidget {
  const Add_Cart_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(text: "Cart"),
              const SizedBox(height: 25),
              Container(
                height: 115,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 20),
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/IMG (1).png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                              width: 150,
                              child: Text(
                                "Men's Tie-Dye T-Shirt Nike Sportswear",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1D1E20)),
                              )),
                          const SizedBox(height: 10),
                          const Text(
                            r"$45 (-$4.00 Tax)",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: kSecondaryColor,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Arrow - Down 4.svg"),
                                ),
                              ]),
                              const SizedBox(width: 15),
                              const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1D1E20)),
                              ),
                              const SizedBox(width: 15),
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Arrow - Up 4.svg"),
                                ),
                              ]),
                              const SizedBox(width: 85),
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Delete.svg"),
                                ),
                              ]),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 115,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/IMG.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                              width: 150,
                              child: Text(
                                "Men's Tie-Dye T-Shirt Nike Sportswear",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1D1E20)),
                              )),
                          const SizedBox(height: 10),
                          const Text(
                            r"$45 (-$4.00 Tax)",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: kSecondaryColor,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Arrow - Down 4.svg"),
                                ),
                              ]),
                              const SizedBox(width: 15),
                              const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1D1E20)),
                              ),
                              const SizedBox(width: 15),
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Arrow - Up 4.svg"),
                                ),
                              ]),
                              const SizedBox(width: 85),
                              Stack(children: [
                                SvgPicture.asset("assets/Icons/up.svg"),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: SvgPicture.asset(
                                      "assets/Icons/Delete.svg"),
                                ),
                              ]),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Address_view.routeName);
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Delivery Address",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1D1E20),
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "assets/Icons/Right'.svg",
                          height: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset("assets/images/Rectangle 584.png"),
                          Positioned(
                              right: 18,
                              top: 15,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFF7043),
                                    borderRadius: BorderRadius.circular(50)),
                                child: SvgPicture.asset(
                                  "assets/Icons/Location.svg",
                                  color: Colors.white,
                                ),
                              )),
                        ]),
                        const SizedBox(width: 15),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chhatak, Sunamgonj 12/8AB",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff1D1E20),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Sylhet",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset("assets/Icons/checkGreen.svg")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D1E20),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/Icons/Right'.svg",
                        height: 14,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SvgPicture.asset("assets/Icons/backVisa.svg"),
                          Positioned(
                              right: 12,
                              top: 10,
                              child: SvgPicture.asset("assets/Icons/ViSA.svg"))
                        ],
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Visa Classic",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff1D1E20),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "**** 7690",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: kSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset("assets/Icons/checkGreen.svg")
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Order Info",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1D1E20)),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: kSecondaryColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    r"$110",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    "Shipping cost",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: kSecondaryColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    r"$10",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: kSecondaryColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    r"$120",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
