// ignore_for_file: unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/Admin_home_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Home_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/widgets/welcome_view_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:ecommerce_app_1/core/utils/provider/AdminMode.dart';
import 'package:ecommerce_app_1/core/utils/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcome_View extends StatefulWidget {
  const Welcome_View({super.key});
  static String routeName = "/welcome";

  @override
  State<Welcome_View> createState() => _Welcome_ViewState();
}

class _Welcome_ViewState extends State<Welcome_View> {
  final adminPassword = 'Admin1234';
  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: const Welcome_view_Body(),
      bottomNavigationBar: GestureDetector(
          onTap: () async {
            _validate(context);
            // if (Welcome_view_Body.globalKeywel.currentState!.validate()) {
            // Welcome_view_Body.globalKeywel.currentState!.save();
            // try {
            // UserCredential user = await FirebaseAuth.instance
            //     .signInWithEmailAndPassword(
            //         email: Welcome_view_Body.Emailwel!,
            //         password: Welcome_view_Body.passwordWel!);

            // ScaffoldMessenger.of(context)
            // .showSnackBar(const SnackBar(content: Text("Success")));
            // Navigator.pushReplacementNamed(context, Home_view.routeName);
            // } catch (e) {
            // ScaffoldMessenger.of(context)
            // .showSnackBar(SnackBar(content: Text(e.toString())));
            // }
          },
          child: BuildButtomNavBar(context, text: "Sign In")),
    );
  }

  void _validate(BuildContext context) async {
    if (Welcome_view_Body.globalKeywel.currentState!.validate()) {
      Welcome_view_Body.globalKeywel.currentState!.save();
      if (Provider.of<AdminMode>(context, listen: false).isAdmin) {
        if (Welcome_view_Body.passwordWel == adminPassword) {
          try {
            await _auth.signIn(Welcome_view_Body.Emailwel!.trim(),
                Welcome_view_Body.passwordWel!.trim());
            Navigator.pushReplacementNamed(context, Admin_Home_view.routeName);
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(e.toString())),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Not Admin!'),
          ));
        }
      } else {
        try {
          await _auth.signIn(Welcome_view_Body.Emailwel!.trim(),
              Welcome_view_Body.passwordWel!.trim());
          Navigator.pushReplacementNamed(context, Home_view.routeName);
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(e.toString()),
          ));
        }
      }
    }
  }
}
