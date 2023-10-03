import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Verification_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/Forget_Password_View_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Forget_Password_View extends StatelessWidget {
  const Forget_Password_View({super.key});
  static String routeName = '/ForgetPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Forget_Password_View_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            if (Forget_Password_View_Body.globalKey.currentState!.validate()) {
              Navigator.pushNamed(context, Verification_view.routeName);
            }
          },
          child: BuildButtomNavBar(context, text: "Confirm Mail")),
    );
  }
}
