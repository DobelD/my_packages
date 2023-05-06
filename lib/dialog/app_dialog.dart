import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/typograpy/typo.dart';
import '../themes/colors/colors.dart';
import '../themes/decoration/app_padding.dart';
import '../themes/decoration/app_radius.dart';

class AppDialog extends StatelessWidget {
  const AppDialog(
      {super.key, this.title, this.subTitle, this.textButton, this.onPressed});

  final String? title;
  final String? subTitle;
  final String? textButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
          vertical: title == 'Layak Bayar'
              ? 290.w
              : title == 'Verifikasi HO'
                  ? 296.w
                  : 302.w,
          horizontal: 16.w),
      child: Container(
          padding: DefaultPadding.all,
          decoration: BoxDecoration(borderRadius: AppRadius.all, color: kWhite),
          child: Material(
            color: Colors.transparent,
            child: Column(
              children: [
                Text('Status $title',
                    style: AppTextTheme.current.appbarTextLight),
                SizedBox(height: 16.w),
                Text('',
                    textAlign: TextAlign.center,
                    style: AppTextTheme.current.title1),
                SizedBox(height: 24.w),
                SizedBox(
                    height: 38.h,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondary1,
                            shape: RoundedRectangleBorder(
                                borderRadius: AppRadius.middleAll)),
                        child: Text(
                          '$textButton',
                          style: AppTextTheme.current.buttonText,
                        )))
              ],
            ),
          )),
    );
  }
}
