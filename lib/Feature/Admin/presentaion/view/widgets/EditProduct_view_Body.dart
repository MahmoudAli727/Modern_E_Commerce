// ignore_for_file: unused_field

import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/TextFormField.dart';
import 'package:ecommerce_app_1/Feature/Home/data/model/model.dart';
import 'package:ecommerce_app_1/core/utils/services/store.dart';
import 'package:flutter/material.dart';

class EditProduct_view_Body extends StatefulWidget {
  const EditProduct_view_Body({super.key, required this.doc});
  final doc;
  @override
  State<EditProduct_view_Body> createState() => _EditProduct_view_BodyState();
}

class _EditProduct_view_BodyState extends State<EditProduct_view_Body> {
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
          // crossAxisAlignment: CrossAxisAlignment.center,
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
                _store.editProductG(
                    NewArraival(
                      imagePath: _imageLocation ?? widget.doc["imagePath"],
                      price: _price != null ? _price! : widget.doc["price"],
                      description: _desc ?? widget.doc["desc"],
                    ),
                    widget.doc.id);

                // try {
                //   _store.editProduct(
                //       NewArraival(
                //         imagePath: _imageLocation,
                //         price: double.parse(_price!),
                //         description: _desc,
                //       ),
                //       widget.doc.id);
                // } on Exception catch (e) {
                //   print(e.toString());
                // }
                Navigator.pop(context);
                // }
              },
              child: const Text('Edit Product'),
            ),
          ],
        ),
      ),
    );
  }
}
