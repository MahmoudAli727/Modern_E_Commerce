import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddCart_View.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/AddRevi_Body.dart';
import 'package:ecommerce_app_1/core/utils/function/navbuttom.dart';
import 'package:flutter/material.dart';

class AddReview_view extends StatelessWidget {
  const AddReview_view({super.key});
  static String routeName = "/AddReview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AddReview_Body(),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AddCart_View.routeName);
            },
            child: BuildButtomNavBar(context, text: "Submit Review")));
  }
}
