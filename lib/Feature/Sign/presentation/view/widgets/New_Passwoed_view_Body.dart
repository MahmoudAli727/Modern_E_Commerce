// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassword_view_Body extends StatelessWidget {
  const NewPassword_view_Body({super.key});
  static GlobalKey<FormState> globalKeyNew = GlobalKey();
  @override
  Widget build(BuildContext context) {
    String? passwordNew;
    String? ConPasswordNew;
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: globalKeyNew,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF5F6FA),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(
                          "assets/Icons/Arrow - Left.svg",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "New Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                          OnChange: (p0) {
                            passwordNew = p0;
                          },
                          hintText: "HJ@#9783kja",
                          icon: "assets/Icons/Strong.svg"),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Confirm Password",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                          OnChange: (p0) {
                            ConPasswordNew = p0;
                          },
                          hintText: "HJ@#9783kja",
                          icon: "assets/Icons/Strong.svg"),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Please write your new password.",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff8F959E)),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
