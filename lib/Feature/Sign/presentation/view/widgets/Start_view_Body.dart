// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, use_build_context_synchronously

import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Home_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/data/cubit/google_cubit.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/welcome_View.dart';
import 'package:ecommerce_app_1/core/utils/components/registerButtom.dart';
import 'package:ecommerce_app_1/core/utils/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Start_view_Body extends StatefulWidget {
  const Start_view_Body({super.key});

  @override
  State<Start_view_Body> createState() => _Start_view_BodyState();
}

class _Start_view_BodyState extends State<Start_view_Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                  "Let’s Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),

                //padding: const EdgeInsets.all(8.0),
                child: RegisButtom(
                  onPress: () {},
                  text: "Facebook",
                  icon: 'assets/Icons/Facebook.svg',
                  color: const Color(0xff4267B2),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),

                // padding: const EdgeInsets.all(8.0),
                child: RegisButtom(
                  onPress: () {},
                  text: "Twitter",
                  icon: 'assets/Icons/Twitter.svg',
                  color: const Color(0xff1DA1F2),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),

                // padding: const EdgeInsets.all(8.0),
                child: BlocConsumer<GoogleCubit, GoogleState>(
                  listener: (context, state) {
                    if (state is GoogleLoading) {
                      DialogUtils.loadingDialog(context);
                    } else if (state is GoogleSuccess) {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, Home_view.routeName);
                    } else if (state is GoogleFailure) {
                      DialogUtils.showMessageDialog(context, state.errmessage);
                    }
                  },
                  builder: (context, state) {
                    return RegisButtom(
                      onPress: () async {
                        BlocProvider.of<GoogleCubit>(context).signGoogle();
                      },
                      text: "Google",
                      icon: 'assets/Icons/Google.svg',
                      color: const Color(0xffEA4335),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                      style: TextStyle(
                        color: Color(0xff8F959E),
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Welcome_View.routeName);
                    },
                    child: const Text(
                      " Signin",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
