import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Admin_Home_view_body.dart';
import 'package:flutter/material.dart';

class Admin_Home_view extends StatelessWidget {
  const Admin_Home_view({super.key});
  static String routeName = "/Admin";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Admin_Home_view_body(),
    );
  }
}
