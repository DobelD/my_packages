import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../themes/colors/colors.dart';

class AppBadges extends StatelessWidget {
  const AppBadges.info(
      {super.key,
      this.text,
      this.bgColor = kPrimary4,
      this.borderColor = kPrimary1});

  const AppBadges.warning(
      {super.key,
      this.text,
      this.bgColor = kAlert3,
      this.borderColor = kAlert1});

  const AppBadges.danger(
      {super.key,
      this.text,
      this.bgColor = kWarning3,
      this.borderColor = kWarning1});
  const AppBadges.success(
      {super.key,
      this.text,
      this.bgColor = kSuccess3,
      this.borderColor = kSuccess1});

  final String? text;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: borderColor)),
      child: Center(
        child: Text('$text',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: bgColor,
              fontSize: 10.sp,
            )),
      ),
    );
  }
}
