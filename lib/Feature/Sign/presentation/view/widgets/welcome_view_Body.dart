// ignore_for_file: unused_local_variable, camel_case_types

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Forget_password.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/textformfield.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/provider/AdminMode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome_view_Body extends StatefulWidget {
  const Welcome_view_Body({super.key});
  static String? Emailwel;
  static String? passwordWel;
  static GlobalKey<FormState> globalKeywel = GlobalKey();

  @override
  State<Welcome_view_Body> createState() => _Welcome_view_BodyState();
}

class _Welcome_view_BodyState extends State<Welcome_view_Body> {
  bool isOnSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: Welcome_view_Body.globalKeywel,
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
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Please enter your data to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0xff8F959E),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                          OnChange: (value) {
                            Welcome_view_Body.Emailwel = value;
                          },
                          hintText: "Esther Howard",
                          icon: "assets/Icons/check.svg"),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                          OnChange: (value) {
                            Welcome_view_Body.passwordWel = value;
                          },
                          hintText: "HJ@#9783kja",
                          icon: "assets/Icons/Strong.svg"),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Provider.of<AdminMode>(context, listen: false)
                                .changeIsAdmin(true);
                          },
                          child: Text(
                            'i\'m an admin',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Provider.of<AdminMode>(context).isAdmin
                                    ? Colors.white
                                    : kPrimaryColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Provider.of<AdminMode>(context, listen: false)
                                .changeIsAdmin(false);
                          },
                          child: Text(
                            'i\'m a user',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Provider.of<AdminMode>(context,
                                            listen: true)
                                        .isAdmin
                                    ? kPrimaryColor
                                    : Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Forget_Password_View.routeName);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Color(0xffEA4335),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  // padding: const EdgeInsets.symmetric(horizontal: 14),
                  padding: const EdgeInsets.only(left: 14),

                  // padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 13,
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                "By connecting your account confirm that you agree with our ",
                            style: TextStyle(
                                fontSize: 13,
                                // ignore: use_full_hex_values_for_flutter_colors
                                color: Color(0xff8F959E),
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Term and Condition",
                            style: TextStyle(
                                fontSize: 13,
                                // ignore: use_full_hex_values_for_flutter_colors
                                color: Color(0xff1D1E20),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
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
