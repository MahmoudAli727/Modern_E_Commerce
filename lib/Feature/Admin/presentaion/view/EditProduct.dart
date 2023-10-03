import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/EditProduct_view_Body.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';

class EditProduct_view extends StatefulWidget {
  const EditProduct_view({super.key});
  static String routeName = "/EditProduct";

  @override
  State<EditProduct_view> createState() => _EditProduct_viewState();
}

class _EditProduct_viewState extends State<EditProduct_view> {
  @override
  Widget build(BuildContext context) {
    var doc = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: EditProduct_view_Body(doc: doc),
    );
  }
}
