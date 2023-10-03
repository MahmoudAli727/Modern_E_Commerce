// ignore_for_file: deprecated_member_use

import 'package:ecommerce_app_1/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildNavBtnHome extends StatefulWidget {
  const BuildNavBtnHome({super.key});

  @override
  State<BuildNavBtnHome> createState() => _BuildNavBtnHomeState();
}

class _BuildNavBtnHomeState extends State<BuildNavBtnHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
              IconsHome.length,
              (index) => IconBtnNav(
                    icon: IconsHome[index],
                    index: index,
                  ))
        ],
      ),
    );
  }
}

class IconBtnNav extends StatefulWidget {
  const IconBtnNav({super.key, required this.icon, required this.index});
  final String icon;
  final int index;
  @override
  State<IconBtnNav> createState() => _IconBtnNavState();
}

class _IconBtnNavState extends State<IconBtnNav> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = widget.index;
        });
      },
      child: selectIndex == widget.index
          ? const Text("Home")
          : SvgPicture.asset(
              widget.icon,
              height: 25,
              color: const Color(0xff8F959E),
            ),
    );
  }
}
