import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisButtom extends StatelessWidget {
  const RegisButtom(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      this.size = 22,
      this.onPress});
  final String text, icon;
  final Color color;
  final double size;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: size,
              ),
              const SizedBox(width: 5),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
