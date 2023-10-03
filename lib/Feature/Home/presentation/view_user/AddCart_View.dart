import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/AddCartBody.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class AddCart_View extends StatelessWidget {
  const AddCart_View({super.key});
  static String routeName = "/AddCart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: const Add_Cart_Body(),
      bottomNavigationBar: BuildButtomNavBar(context, text: "Checkout"),
    );
  }
}
