import 'package:ecommerce_app_1/Feature/Sign/presentation/view/NewPassword_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/Verification_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Verification_view extends StatelessWidget {
  const Verification_view({super.key});
  static String routeName = '/Verification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Verification_view_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, New_Password_view.routeName);
          },
          child: BuildButtomNavBar(context, text: "Confirm Code")),
    );
  }
}
