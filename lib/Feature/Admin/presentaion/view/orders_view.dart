import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Orders_view_Body.dart';
import 'package:flutter/material.dart';

class Orders_view extends StatelessWidget {
  const Orders_view({super.key});
  static String routeName = "/Orders";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Orders_view_Body(),
    );
  }
}
