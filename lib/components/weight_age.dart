import 'package:bmi/components/remove_add_button.dart';
import 'package:bmi/utils/app_color.dart';
import 'package:bmi/utils/app_style.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    required this.text,
    required this.value,
    Key? key,
    required this.remove,
    required this.add,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.textGreyF22,
        ),
        Text(
          '$value',
          style: AppTextStyles.textWhiteF40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
              icon: Icons.remove,
              onPressed: () => remove(value - 1),
            ),
            const SizedBox(width: 8),
            RemoveAddButton(
              icon: Icons.add,
              onPressed: () => add(value + 1),
            ),
          ],
        )
      ],
    );
  }
}
