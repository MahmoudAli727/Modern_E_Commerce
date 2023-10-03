import 'package:ecommerce_app_1/Feature/Sign/presentation/view/welcome_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/New_Passwoed_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class New_Password_view extends StatelessWidget {
  const New_Password_view({super.key});
  static String routeName = '/NewPassord';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NewPassword_view_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Welcome_View.routeName);
          },
          child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, Welcome_View.routeName);
              },
              child: BuildButtomNavBar(context, text: "Reset Password"))),
    );
  }
}
