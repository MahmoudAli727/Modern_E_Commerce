import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/orderConf_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/AddNewCard_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class AddNewCard_view extends StatelessWidget {
  const AddNewCard_view({super.key});
  static String routeName = "/AddNewCard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddNewCard_view_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Order_Conf_view.routeName);
          },
          child: BuildButtomNavBar(context, text: "Add Card")),
    );
  }
}
