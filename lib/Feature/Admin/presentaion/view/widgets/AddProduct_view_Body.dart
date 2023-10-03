// ignore_for_file: unused_field

import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/TextFormField.dart';
import 'package:ecommerce_app_1/Feature/Home/data/model/model.dart';
import 'package:ecommerce_app_1/core/utils/services/store.dart';
import 'package:flutter/material.dart';

class AddProduct_view_Body extends StatefulWidget {
  const AddProduct_view_Body({super.key});

  @override
  State<AddProduct_view_Body> createState() => _AddProduct_view_BodyState();
}

class _AddProduct_view_BodyState extends State<AddProduct_view_Body> {
  String? _price, _desc, _imageLocation;

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _store = Store();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            CustomTextFormField(
              hint: 'Product Description',
              onClick: (value) {
                _desc = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              onClick: (value) {
                _price = value;
              },
              hint: 'Product Price',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              onClick: (value) {
                _imageLocation = value;
              },
              hint: 'Product Location image',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  _globalKey.currentState!.save();

                  _store.addProductG(NewArraival(
                    imagePath: _imageLocation,
                    price: _price!,
                    description: _desc,
                  ));
                  Navigator.pop(context);
                }
              },
              child: const Text('Add Product'),
            )
          ],
        ),
      ),
    );
  }
}
