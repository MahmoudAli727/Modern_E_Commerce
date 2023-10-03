import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Order_Conf_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Order_Conf_view extends StatelessWidget {
  const Order_Conf_view({super.key});
  static String routeName = "/OrderConf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Order_Conf_view_Body(),
      bottomNavigationBar:
          BuildButtomNavBar(context, text: "Continue Shopping"),
    );
  }
}
