import 'package:bmi/utils/app_color.dart';
import 'package:flutter/material.dart';

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: FloatingActionButton(
        backgroundColor: AppColors.buttonColor,
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
