// ignore_for_file: unused_local_variable

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forget_Password_View_Body extends StatelessWidget {
  const Forget_Password_View_Body({super.key});
  static GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    String? emailFor;
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: globalKey,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),

                  // padding: const EdgeInsets.all(8.0),
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
                    "Forget Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/Group.png",
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .09,
                      ),
                      const Text(
                        "Email Address",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                        OnChange: (p0) {
                          emailFor = p0;
                        },
                        hintText: "bill.sanders@example.com",
                        icon: "assets/Icons/Strong.svg",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .2,
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: SizedBox(
                      width: 250,
                      child: Text(
                        "Please write your email to receive a confirmation code to set a new password..",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
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
