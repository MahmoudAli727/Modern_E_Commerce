import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Payment_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Payment_view extends StatelessWidget {
  const Payment_view({super.key});
  static String routeName = "/payment";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Payment_view_Body(),
      bottomNavigationBar: BuildButtomNavBar(context, text: "Save Card"),
    );
  }
}
