// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/uikit/buttons/action_button.dart';
import 'package:surf_flutter_summer_school_24/uikit/text/app_text_scheme.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '😪',
              style: context.appTextScheme.headline
                  .copyWith(fontSize: 60, fontWeight: FontWeight.w600),
            ),
            Text(
              'Упс!',
              style: context.appTextScheme.headline.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Что-то пошло не так',
              style: context.appTextScheme.display.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(height: 10),
            ActionButton(
                text: 'ПОПРОБОВАТЬ СНОВА',
                onPressed: () => {Navigator.of(context).pop()})
          ],
        ),
      ),
    );
  }
}
