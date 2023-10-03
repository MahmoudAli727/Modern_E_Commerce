import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Custom_Menu.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildItem.dart';
import 'package:ecommerce_app_1/core/utils/services/store.dart';
import 'package:flutter/material.dart';

class Grid_Items_WishList extends StatelessWidget {
  const Grid_Items_WishList({super.key});
  @override
  Widget build(BuildContext context) {
    CollectionReference wishList =
        FirebaseFirestore.instance.collection("wishlist");
    double HeightScreen = MediaQuery.of(context).size.height;
    double fixHeight = 100;
    Store _store = Store();
    return StreamBuilder<QuerySnapshot>(
        stream: wishList.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              height: HeightScreen + fixHeight,
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
                                _store.deleteProductW(
                                    snapshot.data!.docs[index].id);

                                Navigator.pop(context);
                              },
                              child: const Text('Delete'),
                            ),
                          ]);
                    },
                    child: BuildItem(
                      data: snapshot.data!.docs[index].data(),
                    ),
                  );
                },
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
