// ignore_for_file: unused_local_variable

import 'package:ecommerce_app_1/Feature/Sign/presentation/view/welcome_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/Sign_Up_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp_view extends StatelessWidget {
  const SignUp_view({super.key});
  static String routeName = "/SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SignUp_View_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () async {
            if (SignUp_View_Body.globalKeyUp.currentState!.validate()) {
              try {
                UserCredential user = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: SignUp_View_Body.emailUp!,
                        password: SignUp_View_Body.passwordUp!);

                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Success")));
                Navigator.pushNamed(context, Welcome_View.routeName);
              } catch (e) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(e.toString())));
              }
            }
          },
          child: BuildButtomNavBar(context, text: "Sign Up")),
    );
  }
}
