// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/BuildRowTitle.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/RowTextField.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/grid_items.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Sign_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/components/categories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Home_View_Body extends StatefulWidget {
  const Home_View_Body({super.key});

  @override
  State<Home_View_Body> createState() => _Home_View_BodyState();
}

class _Home_View_BodyState extends State<Home_View_Body> {
  bool isOnSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/Icons/Menu2.svg"),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/Frame 1 1.png",
                      ),
                      radius: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mrh Raju",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1D1E20)),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Verified Profile",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: kSecondaryColor,
                              ),
                            ),
                            Image.asset("assets/images/Badge.png")
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: const BoxDecoration(
                          color: Color(0xffF5F6FA),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "3 Orders",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: kSecondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/Icons/sun.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Dark Mode",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    ),
                    const Spacer(),

                    CupertinoSwitch(
                        activeColor: isOnSwitch == true
                            ? const Color(0xff34C559)
                            : const Color(0xffD6D6D6),
                        value: isOnSwitch,
                        onChanged: (currentValue) {
                          isOnSwitch = currentValue;
                          setState(() {});
                        }),
                    // SvgPicture.asset("assets/Icons/ON BTN.svg")
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Info Circle.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Account Information",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Lock.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Bag.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Order",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Wallet.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "My Cards",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Heart.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Wishlist",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset("assets/Icons/Setting.svg"),
                    const SizedBox(width: 10),
                    const Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff1D1E20)),
                    )
                  ],
                ),
                const SizedBox(height: 80),
                InkWell(
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushReplacementNamed(
                          context, Sign_view.routeName);
                    } on Exception catch (e) {
                      print(e);
                    }
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/Icons/Logout.svg"),
                      const SizedBox(width: 10),
                      const Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF5757)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: SvgPicture.asset(
                "assets/Icons/Menu.svg",
              ),
            );
          },
        ),
        actions: [
          SvgPicture.asset("assets/Icons/Cart.svg"),
          const SizedBox(width: 14),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Hello",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: Color(0xff1D1E20),
                  ),
                ),
                Text(
                  "Welcome to Laza.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Color(0xff8F959E),
                  ),
                ),
                SizedBox(height: 15),
                RowTextField_Home(hintText: "Search..."),
                SizedBox(height: 15),
                BuildRowTitle(text: "Choose Brand"),
                SizedBox(height: 10),
                Categories(),
                SizedBox(height: 15),
                BuildRowTitle(text: "New Arraival"),
                SizedBox(height: 15),
                Grid_Items_Home(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
