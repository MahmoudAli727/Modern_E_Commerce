import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address_View_Body extends StatefulWidget {
  const Address_View_Body({super.key});

  @override
  State<Address_View_Body> createState() => _Address_View_BodyState();
}

class _Address_View_BodyState extends State<Address_View_Body> {
  bool isOnSwitch = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    "Country",
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
                            hintText: "Bangladesh",
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
                    "City",
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
                            hintText: "Sylhet",
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
            const SizedBox(height: 15),
            const Text(
              "Phone Number",
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
                    hintText: "+880 1453-987533",
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
              "Address",
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
                    hintText: "Chhatak, Sunamgonj 12/8AB",
                    fillColor: Color(0xffF5F6FA),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff8F959E))),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Save as primary address",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                CupertinoSwitch(
                    activeColor: isOnSwitch == true
                        ? const Color(0xff34C559)
                        : const Color(0xffD6D6D6),
                    value: isOnSwitch,
                    onChanged: (currentValue) {
                      isOnSwitch = currentValue;
                      setState(() {});
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
