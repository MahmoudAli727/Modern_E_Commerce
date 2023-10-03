// ignore_for_file: camel_case_types

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/sign_view_body.dart';
import 'package:flutter/material.dart';

class Sign_view extends StatelessWidget {
  const Sign_view({super.key});
  static String routeName = "/Sign";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Sign_view_Body(),
    );
  }
}
