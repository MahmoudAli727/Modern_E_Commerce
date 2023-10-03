import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/AddProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/manageProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/orders_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Home_View.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Sign_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/services/auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Admin_Home_view_body extends StatelessWidget {
  const Admin_Home_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

      // padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AddProduct_view.routeName);
            },
            child: const Text('Add Product'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, ManageProduct_view.routeName);
            },
            child: const Text('Manage Product'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Orders_view.routeName);
            },
            child: const Text('Orders'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Home_view.routeName);
            },
            child: const Text('go home'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            onPressed: () {
              Auth().signOut();
              Navigator.pushReplacementNamed(context, Sign_view.routeName);
            },
            child: const Text('logOut'),
          ),
        ],
      ),
    );
  }
}
