import 'package:bmi/utils/app_style.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required String text,
  required BuildContext context,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyles.textWhiteF18,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: AppTextStyles.textWhiteF18,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('артка кайтуу'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
