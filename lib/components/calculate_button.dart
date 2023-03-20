import 'package:bmi/utils/app_color.dart';
import 'package:bmi/utils/app_style.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        color: AppColors.calculateColor,
        child: const Center(
          child: Text(
            AppText.calculate,
            style: AppTextStyles.textWhiteF25,
          ),
        ),
      ),
    );
  }
}
