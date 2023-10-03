import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Nike_view.dart';
import 'package:ecommerce_app_1/const.dart';
import 'package:ecommerce_app_1/core/utils/components/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Order_Conf_view_Body extends StatelessWidget {
  const Order_Conf_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Mask Group.png"))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(text: ""),
              const SizedBox(height: 65),
              Center(
                  child: Image.asset(
                      "assets/images/undraw_order_confirmed_aaw7 1.png")),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Order Confirmed!",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1D1E20)),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Your order has been confirmed, we will send you confirmation email shortly.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: kSecondaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Nike_view.routeName);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffF5F5F5)),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Go to Orders",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: kSecondaryColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
