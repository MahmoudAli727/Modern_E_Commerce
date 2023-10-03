// ignore_for_file: file_names, camel_case_types

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/SignUp.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/Start_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
// import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class Start_view extends StatelessWidget {
  const Start_view({super.key});
  static String routeName = '/Start';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: const Start_view_Body(),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUp_view.routeName);
            },
            child: BuildButtomNavBar(context, text: "Create An Account")));
  }
}
