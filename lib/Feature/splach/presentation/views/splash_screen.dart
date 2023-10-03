// ignore_for_file: camel_case_types

import 'package:ecommerce_app_1/Feature/splach/presentation/views/widgets/Body.dart';
import 'package:flutter/material.dart';

class Splach_view extends StatelessWidget {
  const Splach_view({super.key});
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splash_view_Body(),
    );
  }
}
