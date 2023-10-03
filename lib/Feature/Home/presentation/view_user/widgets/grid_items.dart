// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Custom_Menu.dart';
import 'package:ecommerce_app_1/Feature/Home/data/model/model.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildItem.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Details_Body.dart';
import 'package:ecommerce_app_1/core/utils/services/store.dart';
import 'package:flutter/material.dart';

class Grid_Items_Home extends StatelessWidget {
  const Grid_Items_Home({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Store _store = Store();
    // List<String> HomeImgs = [
    //   "assets/images/onei.jpg",
    //   "assets/images/twoi.png",
    //   "assets/images/threei.png",
    //   "assets/images/fouri.png",
    // ];
    CollectionReference groub = FirebaseFirestore.instance.collection("groub");
    double HeightScreen = MediaQuery.of(context).size.height;
    double fixHeight = 100;
    // List<NewArraival> _products;
    Store store = Store();
    return StreamBuilder<QuerySnapshot>(
        stream: groub.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //   List<NewArraival> products = [];
            //     for (var doc in snapshot.data!.docs) {
            //       // var data = doc.data()!;
            //       products.add(NewArraival(
            //         pId: doc["pId"],
            //         price: doc["price"],
            //         description: doc['description'],
            //         imagePath: doc['imagePath'],
            //       ));
            //     }
            //      _products = [...products];
            // products.clear();
            return SizedBox(
              height: HeightScreen + fixHeight,
              child: Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.7 / 2.5,
                      crossAxisCount: 2),
                  itemCount: snapshot.data!.docs.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTapUp: (details) async {
                        double dx = details.globalPosition.dx;
                        double dy = details.globalPosition.dy;
                        double dx2 = MediaQuery.of(context).size.width - dx;
                        double dy2 = MediaQuery.of(context).size.width - dy;
                        await showMenu(
                            context: context,
                            position: RelativeRect.fromLTRB(dx, dy, dx2, dy2),
                            items: [
                              MyPopupMenuItem(
                                onClick: () {
                                  Navigator.pop(context);
                                  store.addProductW(
                                    (NewArraival(
                                      imagePath: snapshot.data!.docs[index]
                                          ["imagePath"],
                                      price: snapshot.data!.docs[index]["price"]
                                          .toString(),
                                      description: snapshot.data!.docs[index]
                                          ["desc"],
                                    )),
                                  );
                                },
                                child: const Text('Add WishList'),
                              ),
                              MyPopupMenuItem(
                                onClick: () {
                                  Navigator.pop(context);

                                  Navigator.pushNamed(
                                      context, Details_Body.routeName,
                                      arguments:
                                          snapshot.data!.docs[index].data());
                                },
                                child: const Text('Go Details'),
                              ),
                            ]);
                      },
                      child: BuildItem(
                        data: snapshot.data!.docs[index].data(),
                      ),
                    );
                  },
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Text("wrong");
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
