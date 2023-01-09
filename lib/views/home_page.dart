// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'dart:math';

import 'package:bmi/components/alert_dialog.dart';
import 'package:bmi/components/calculate_button.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/components/weight_age.dart';
import 'package:bmi/components/male_famale.dart';
import 'package:bmi/components/slider.dart';
import 'package:bmi/utils/app_color.dart';
import 'package:bmi/utils/app_style.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180.0;
  int weight = 60;
  int age = 28;
  bool isfamale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyles.textWhiteF25,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isfamale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppText.male,
                        isfemale: !isfamale,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isfamale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppText.female,
                        isfemale: isfamale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            StatusCard(
              child: SliderWidget(
                cupertinoSliderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppText.weight,
                      value: weight,
                      add: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                      remove: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                    ),
                  ),
                  StatusCard(
                    child: WeightAge(
                      text: AppText.age,
                      value: age,
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      remove: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            // print('Сенин салмагын аз экен. Кобуроок же');
            showMyDialog(
              text: 'Сенин салмагын аз экен. Кобуроок же',
              context: context,
            );
          } else if (result > 18.5 && result < 24.9) {
            // print('Сенин салмагын жакшы. Молодец.');
            showMyDialog(
              text: 'Сенин салмагын жакшы. Молодец.',
              context: context,
            );
          } else if (result > 24.9) {
            // print(
            //     'Сенде ашыкча салмак коп. Озуно жакшы кара. Спорт менен алектен');
            showMyDialog(
              text:
                  'Сенде ашыкча салмак коп. Озуно жакшы кара. Спорт менен алектен',
              context: context,
            );
          } else {
            // print('Маалымат алууда катачылыктар бар');
            showMyDialog(
              text: 'Маалымат алууда катачылыктар бар',
              context: context,
            );
          }
        },
      ),
    );
  }
}
