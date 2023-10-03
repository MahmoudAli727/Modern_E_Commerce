import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/grid_item_wish.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Orders_view_Body extends StatelessWidget {
  const Orders_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: ListView(
        children: const [
          CustomAppBar(text: "Orders"),
          SizedBox(height: 20),
          Grid_Items_WishList(),
        ],
      ),
    );
  }
}
