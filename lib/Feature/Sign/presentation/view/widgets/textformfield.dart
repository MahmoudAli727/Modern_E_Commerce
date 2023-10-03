import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFormFieldCard extends StatefulWidget {
  const TextFormFieldCard(
      {super.key, required this.hintText, required this.icon, this.OnChange});
  final String hintText, icon;
  final Function(String)? OnChange;

  @override
  State<TextFormFieldCard> createState() => _TextFormFieldCardState();
}

class _TextFormFieldCardState extends State<TextFormFieldCard> {
  bool noIcon = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          noIcon = true;
          setState(() {});
          return "This Field is requird";
        }
        noIcon = false;
        setState(() {});
        return null;
      },
      onChanged: widget.OnChange,
      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: Container(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              widget.icon,
              color: noIcon == true ? Colors.white : Color(0xff34C559),
            ),
          ),
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          )),
    );
  }
}
