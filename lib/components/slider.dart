import 'package:bmi/components/status_card.dart';
import 'package:bmi/utils/app_color.dart';
import 'package:bmi/utils/app_style.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/cupertino.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    required this.onChanged,
    Key? key,
    required this.cupertinoSliderValue,
  }) : super(key: key);
  final double cupertinoSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StatusCard(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppText.height,
                style: AppTextStyles.textGreyF22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${cupertinoSliderValue.toInt()}',
                    style: AppTextStyles.textWhiteF40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      AppText.cm,
                      style: AppTextStyles.textGreyF22,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: CupertinoSlider(
                    max: 300,
                    value: cupertinoSliderValue,
                    onChanged: onChanged,
                    activeColor: AppColors.whiteColor,
                    thumbColor: AppColors.calculateColor,
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
