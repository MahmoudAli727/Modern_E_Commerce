import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/EditProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/widgets/Custom_Menu.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildItem.dart';
import 'package:ecommerce_app_1/core/utils/services/store.dart';
import 'package:flutter/material.dart';

class Grid_Items_Admin extends StatefulWidget {
  const Grid_Items_Admin({super.key});

  @override
  State<Grid_Items_Admin> createState() => _Grid_Items_AdminState();
}

class _Grid_Items_AdminState extends State<Grid_Items_Admin> {
  final _store = Store();

  @override
  Widget build(BuildContext context) {
    // List<String> HomeImgs = [
    //   "assets/images/onei.jpg",
    //   "assets/images/twoi.png",
    //   "assets/images/threei.png",
    //   "assets/images/fouri.png",
    // ];
    CollectionReference groub = FirebaseFirestore.instance.collection("groub");
    double HeightScreen = MediaQuery.of(context).size.height;
    double fixHeight = 100;
    return StreamBuilder<QuerySnapshot>(
        stream: groub.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
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

                                  Navigator.pushNamed(
                                    context,
                                    EditProduct_view.routeName,
                                    arguments: snapshot.data!.docs[index],
                                  );
                                },
                                child: const Text('Edit'),
                              ),
                              MyPopupMenuItem(
                                onClick: () {
                                  _store.deleteProductG(
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
