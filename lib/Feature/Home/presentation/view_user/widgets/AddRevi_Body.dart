import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class AddReview_Body extends StatefulWidget {
  const AddReview_Body({super.key});

  @override
  State<AddReview_Body> createState() => _AddReview_BodyState();
}

class _AddReview_BodyState extends State<AddReview_Body> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(text: "Add Review"),
              const SizedBox(height: 25),
              const Text(
                "Name",
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
                      hintText: "Type your name",
                      fillColor: Color(0xffF5F6FA),

                      // fillColor: Color(0xff8F959E),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8F959E))),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "How was your experience ?",
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
                      hintText: "Describe your experience?",
                      // fillColor: Color(0xff8F959E),

                      fillColor: Color(0xffF5F6FA),
                      filled: true,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8F959E))),
                  maxLines: 10,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Star",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xff1D1E20),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  // SizedBox(width: width * 0.06),
                  Text(
                    rating.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20),

                      // color: Theme.of(context).secondaryHeaderColor
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      activeColor: const Color(0xffF5F6FA),
                      // Theme.of(context).cardColor,
                      inactiveColor: const Color(0xffF5F6FA),
                      // Theme.of(context).cardColor,
                      thumbColor: const Color(0xff9775FA),
                      value: rating,
                      onChanged: (newRating) {
                        setState(() => rating = newRating);
                      },
                      min: 0,
                      max: 5,
                    ),
                  ),
                  const Text(
                    "5.0",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D1E20),

                      // color: Theme.of(context).secondaryHeaderColor
                    ),
                  ),
                  // SizedBox(width: ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
