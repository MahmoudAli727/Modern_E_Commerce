// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/grid_item_wish.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Nike_view_Body extends StatelessWidget {
  const Nike_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> HomeImgs = [
    //   "assets/images/onei.jpg",
    //   "assets/images/twoi.png",
    //   "assets/images/threei.png",
    //   "assets/images/fouri.png",
    //   "assets/images/threei.png",
    //   "assets/images/fouri.png",
    // ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Row(
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
                          child: SvgPicture.asset(
                              "assets/Icons/Arrow - Left.svg"))),
                ),
                const Spacer(),
                Container(
                  height: 45,
                  width: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F6FA),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SvgPicture.asset("assets/Icons/Vector.svg"),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset("assets/Icons/Cart.svg")
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "365 Items",
                            style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Available in stock",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        decoration: const BoxDecoration(
                            color: Color(0xffF5F6FA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/Icons/sort.svg",
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "sort",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1D1E20)),
                              )
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Grid_Items_WishList(),
                ],
              ),
            ),
            // const Grid_Items_Home(),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 1.1,
            //   child: GridView.builder(
            //     physics: const NeverScrollableScrollPhysics(),
            //     clipBehavior: Clip.none,
            //     itemCount: HomeImgs.length,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         mainAxisSpacing: 10,
            //         crossAxisSpacing: 2,
            //         childAspectRatio: 1 / 1.35,
            //         crossAxisCount: 2),
            //     itemBuilder: (context, index) {
            //       return BuildItem(
            //       image: HomeImgs[index],
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
