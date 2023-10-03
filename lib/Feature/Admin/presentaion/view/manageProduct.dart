import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/ManageProduct_view_Body.dart';
import 'package:flutter/material.dart';

class ManageProduct_view extends StatelessWidget {
  const ManageProduct_view({super.key});
  static String routeName = "/manageProduct";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ManageProduct_view_Body(),
    );
  }
}
