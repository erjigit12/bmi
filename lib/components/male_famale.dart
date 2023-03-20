import 'package:bmi/utils/app_color.dart';
import 'package:bmi/utils/app_style.dart';
import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    required this.isfemale,
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool isfemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: isfemale ? AppColors.whiteColor : AppColors.buttonColor,
        ),
        Text(
          text,
          style: AppTextStyles.textGreyF22,
        )
      ],
    );
  }
}
