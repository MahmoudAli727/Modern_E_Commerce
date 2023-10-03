// ignore_for_file: camel_case_types, file_names

import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/Admin_home_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Home_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Sign_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class splash_view_Body extends StatefulWidget {
  const splash_view_Body({super.key});

  @override
  State<splash_view_Body> createState() => _splash_view_BodyState();
}

class _splash_view_BodyState extends State<splash_view_Body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: kPrimaryColor,
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset("assets/images/Logo.png", color: Colors.white),
        ),
      ),
    );
  }

  void navigatetohome() {
    Future.delayed(const Duration(seconds: 3), () {
      var user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Navigator.pushNamed(context, Sign_view.routeName);
      } else if (user.email == "admin@gmail.com") {
        Navigator.pushNamed(context, Admin_Home_view.routeName);
      } else {
        Navigator.pushNamed(context, Home_view.routeName);
      }
    });
  }
}
