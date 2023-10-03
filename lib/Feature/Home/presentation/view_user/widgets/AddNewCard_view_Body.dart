import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/AddNewCardCategories.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class AddNewCard_view_Body extends StatelessWidget {
  const AddNewCard_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cateImages = [
      "assets/images/image 9.png",
      "assets/images/image 10.png",
      "assets/images/Vector.png"
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(text: "Add New Card"),
            const SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ...List.generate(
                  cateImages.length,
                  (index) => AddNewCategoriesCard(
                        index: index,
                        icon: cateImages[index],
                      )),
            ]),
            const SizedBox(height: 30),
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

                    // fillColor: Color(0xff8F959E),
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                const SizedBox(width: 15),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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

                            // fillColor: Color(0xff8F959E),
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
          ],
        ),
      ),
    );
  }
}
