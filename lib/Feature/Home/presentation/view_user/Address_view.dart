import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Payment_View.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Addresss_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Address_view extends StatelessWidget {
  const Address_view({super.key});
  static String routeName = "/Address";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Address_View_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Payment_view.routeName);
          },
          child: BuildButtomNavBar(context, text: "Save Address")),
    );
  }
}
