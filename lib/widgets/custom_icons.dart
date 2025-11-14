import 'package:flutter/material.dart';
import 'package:flutter_login_ui/app/constants/colors.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AColors.white,
        boxShadow: [
          BoxShadow(
            color: AColors.iconBorder,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Image.asset(imagePath, height: 25, width: 25, fit: BoxFit.contain),
    );
  }
}
