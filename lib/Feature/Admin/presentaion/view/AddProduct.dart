import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/AddProduct_view_Body.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';

class AddProduct_view extends StatelessWidget {
  const AddProduct_view({super.key});
  static String routeName = "/AddProduct";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: AddProduct_view_Body(),
    );
  }
}
