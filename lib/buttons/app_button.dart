import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes/colors/colors.dart';
import '../themes/decoration/app_radius.dart';
import '../themes/typograpy/typo.dart';

class AppButton extends StatelessWidget {
  const AppButton.primary(
      {super.key,
      this.bgColor = kSecondary1,
      this.border = Colors.transparent,
      this.onPressed,
      this.text,
      this.icon,
      this.height = 38,
      this.iconText = false,
      this.scndIconText = false,
      this.isSecond = false});
  const AppButton.primaryIcon(
      {super.key,
      this.bgColor = kSecondary1,
      this.border = Colors.transparent,
      this.onPressed,
      this.text,
      this.icon,
      this.height = 38,
      this.iconText = true,
      this.scndIconText = false,
      this.isSecond = false});

  const AppButton.secondary(
      {super.key,
      this.bgColor = kWhite,
      this.border = kSecondary1,
      this.onPressed,
      this.text,
      this.icon,
      this.height = 38,
      this.iconText = false,
      this.scndIconText = false,
      this.isSecond = true});

  const AppButton.secondaryIcon(
      {super.key,
      this.bgColor = kWhite,
      this.border = kSecondary1,
      this.onPressed,
      this.text,
      this.icon,
      this.height = 38,
      this.iconText = false,
      this.scndIconText = true,
      this.isSecond = true});

  final bool iconText;
  final bool scndIconText;
  final Color? bgColor;
  final VoidCallback? onPressed;
  final String? text;
  final bool isSecond;
  final double? height;
  final String? icon;
  final Color border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height?.w,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                disabledBackgroundColor: kGrey3,
                backgroundColor: bgColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: AppRadius.middleAll,
                    side: BorderSide(color: border))),
            onPressed: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconText == true
                      ? SizedBox(
                          height: 10.w,
                          width: 10.w,
                          child: SvgPicture.asset(icon ?? ''))
                      : const SizedBox(),
                  SizedBox(width: iconText == true ? 8.w : 0),
                  Text(
                    '$text',
                    style: isSecond == false
                        ? AppTextTheme.current?.buttonText
                        : onPressed != null
                            ? AppTextTheme.current?.buttonTextDark
                            : AppTextTheme.current?.buttonText,
                  ),
                ],
              ),
            )));
  }
}
