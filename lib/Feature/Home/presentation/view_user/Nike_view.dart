import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Nike_view_Body.dart';
import 'package:flutter/material.dart';

class Nike_view extends StatelessWidget {
  const Nike_view({super.key});
  static String routeName = "/Nike";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Nike_view_Body(),
    );
  }
}
