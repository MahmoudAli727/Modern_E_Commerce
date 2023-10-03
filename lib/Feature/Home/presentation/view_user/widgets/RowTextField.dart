import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildTextfieldHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowTextField_Home extends StatelessWidget {
  const RowTextField_Home({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField_Home(
          hintText: hintText,
        ),
        SvgPicture.asset("assets/Icons/Voice.svg")
      ],
    );
  }
}
