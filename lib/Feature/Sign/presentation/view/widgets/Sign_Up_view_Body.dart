import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp_View_Body extends StatefulWidget {
  const SignUp_View_Body({super.key});
  static String? usenameUp;
  static String? passwordUp;
  static String? emailUp;
  static GlobalKey<FormState> globalKeyUp = GlobalKey();

  @override
  State<SignUp_View_Body> createState() => _SignUp_View_BodyState();
}

class _SignUp_View_BodyState extends State<SignUp_View_Body> {
  bool isOnSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: SignUp_View_Body.globalKeyUp,
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
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),

                  // padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      TextFormFieldCard(
                          OnChange: (p0) {
                            SignUp_View_Body.usenameUp = p0;
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
                          OnChange: (p0) {
                            SignUp_View_Body.passwordUp = p0;
                          },
                          hintText: "HJ@#9783kja",
                          icon: "assets/Icons/Strong.svg"),
                      const SizedBox(
                        height: 20,
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
                            SignUp_View_Body.emailUp = p0;
                          },
                          hintText: "bill.sanders@example.com",
                          icon: "assets/Icons/check.svg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),

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
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: SvgPicture.asset("assets/Icons/Switch ON.svg"))
                    ],
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
