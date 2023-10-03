import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Grid_Items_Admin.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class ManageProduct_view_Body extends StatelessWidget {
  const ManageProduct_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: ListView(
        children: const [
          CustomAppBar(text: "Products"),
          SizedBox(height: 20),
          Grid_Items_Admin(),
        ],
      ),
    );
  }
}
