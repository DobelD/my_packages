import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../themes/decoration/app_radius.dart';
import '../../themes/typograpy/typo.dart';
import '../themes/colors/colors.dart';
import '../themes/decoration/app_padding.dart';

class FooterButton extends StatelessWidget {
  const FooterButton(
      {super.key,
      this.onPressed,
      this.textButton,
      this.onPressed2,
      this.textButton2,
      this.onTap,
      this.disable = false,
      this.disable2 = false,
      this.option = false,
      this.report = false,
      this.downloads = false});
  const FooterButton.report(
      {super.key,
      this.onPressed,
      this.textButton,
      this.onPressed2,
      this.textButton2,
      this.onTap,
      this.disable = false,
      this.disable2 = false,
      this.option = false,
      this.report = true,
      this.downloads = false});
  const FooterButton.download(
      {super.key,
      this.onPressed,
      this.textButton,
      this.onPressed2,
      this.textButton2,
      this.onTap,
      this.disable = false,
      this.disable2 = false,
      this.option = false,
      this.report = false,
      this.downloads = true});
  const FooterButton.option(
      {super.key,
      this.onPressed,
      this.textButton,
      this.onPressed2,
      this.textButton2,
      this.onTap,
      this.disable = false,
      this.disable2 = false,
      this.option = true,
      this.report = false,
      this.downloads = false});

  final String? textButton;
  final VoidCallback? onPressed;
  final String? textButton2;
  final VoidCallback? onPressed2;
  final GestureTapCallback? onTap;
  final bool disable;
  final bool disable2;
  final bool report;
  final bool option;
  final bool downloads;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: DefaultPadding.all,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r)),
            color: kWhite,
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF6680C5).withOpacity(0.08),
                  blurRadius: 14,
                  offset: const Offset(0, -8))
            ]),
        child: Row(
          children: [
            report == true
                ? GestureDetector(
                    onTap: onTap, child: SizedBox(child: SvgPicture.asset('')))
                : const SizedBox(),
            SizedBox(width: report == true ? 8.w : 0),
            Expanded(
              child: SizedBox(
                  height: 38.h,
                  child: ElevatedButton(
                      onPressed: disable != true ? onPressed : null,
                      style: ElevatedButton.styleFrom(
                          disabledBackgroundColor: kGrey3,
                          backgroundColor: kSecondary1,
                          shape: RoundedRectangleBorder(
                              borderRadius: AppRadius.middleAll)),
                      child: downloads == false
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                option == true
                                    ? SizedBox(child: SvgPicture.asset(''))
                                    : const SizedBox(),
                                SizedBox(width: option == true ? 8.w : 0),
                                option == true
                                    ? SizedBox(
                                        width: 200,
                                        child: Text(
                                          '$textButton',
                                          overflow: TextOverflow.ellipsis,
                                          style:
                                              AppTextTheme.current.buttonText,
                                        ),
                                      )
                                    : Expanded(
                                        child: Center(
                                          child: Text(
                                            '$textButton',
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                AppTextTheme.current.buttonText,
                                          ),
                                        ),
                                      )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(child: SvgPicture.asset('')),
                                SizedBox(width: 8.w),
                                Text(
                                  '$textButton',
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextTheme.current.buttonText,
                                ),
                              ],
                            ))),
            ),
            SizedBox(width: option == true ? 8.w : 0),
            option == true
                ? Expanded(
                    child: SizedBox(
                        height: 38.h,
                        child: ElevatedButton(
                            onPressed: disable2 != true ? onPressed2 : null,
                            style: ElevatedButton.styleFrom(
                                disabledBackgroundColor: kWhite,
                                backgroundColor: kWhite,
                                shape: RoundedRectangleBorder(
                                    borderRadius: AppRadius.middleAll),
                                side: BorderSide(
                                    color: onPressed2 != null
                                        ? kSecondary1
                                        : kGrey3,
                                    width: 1.2)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    child: SvgPicture.asset(
                                  onPressed2 != null ? '' : '',
                                )),
                                SizedBox(width: 8.w),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    '$textButton2',
                                    overflow: TextOverflow.ellipsis,
                                    style: onPressed2 != null
                                        ? AppTextTheme.current.buttonTextDark
                                        : AppTextTheme.current.hintText,
                                  ),
                                )
                              ],
                            ))),
                  )
                : const SizedBox(),
          ],
        ));
  }
}
