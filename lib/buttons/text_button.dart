import 'package:flutter/material.dart';

import '../themes/typograpy/typo.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, this.text, this.onTap});

  final String? text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        '$text',
        style: AppTextTheme.current?.textButton,
      ),
    );
  }
}
