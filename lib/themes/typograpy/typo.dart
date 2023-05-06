import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';

class AppTextTheme {
  AppTextTheme(BuildContext context) : _localContext = context;

  // ignore: unused_field
  final BuildContext _localContext;

  static AppTextTheme? current;

  // static void init(BuildContext context) {
  //   AppTextTheme.current ??= AppTextTheme(context);
  // }

  TextStyle get heroLabel => GoogleFonts.inter(
      fontWeight: FontWeight.bold, color: kDarkText, fontSize: 18.sp);
  TextStyle get heading => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kDarkText, fontSize: 20.sp);

  TextStyle get labelForm => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kDarkText, fontSize: 12.sp);
  TextStyle get hintForm => GoogleFonts.inter(
      fontWeight: FontWeight.w400, color: kGrey1, fontSize: 12.sp);
  TextStyle get hintFormMedium => GoogleFonts.inter(
      fontWeight: FontWeight.w500, color: kGrey1, fontSize: 12.sp);
  TextStyle get hintText => GoogleFonts.inter(
      fontWeight: FontWeight.w400, color: kGrey1, fontSize: 14.sp);
  TextStyle get textForm => GoogleFonts.inter(
      fontWeight: FontWeight.w500, color: kBlack, fontSize: 12.sp);
  TextStyle get buttonText => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kWhite, fontSize: 14.sp);
  TextStyle get buttonTextDark => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kSecondary1, fontSize: 14.sp);
  TextStyle get errorText => GoogleFonts.inter(
      fontWeight: FontWeight.w400, color: kWarning1, fontSize: 12.sp);

  TextStyle get title1 => GoogleFonts.inter(
      fontWeight: FontWeight.w400, color: kBlack, fontSize: 14.sp);

  TextStyle get title2 => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kBlack, fontSize: 14.sp);
  TextStyle get textButton => GoogleFonts.inter(
      fontWeight: FontWeight.w500, color: kSecondary1, fontSize: 14.sp);
  TextStyle get price => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kSecondary1, fontSize: 14.sp);
  TextStyle get appbarTextLight => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kBlack, fontSize: 16.sp);
  TextStyle get appbarTextDark => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kWhite, fontSize: 16.sp);
  TextStyle get dashboardText => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kPrimary1, fontSize: 16.sp);
  TextStyle get badgeText => GoogleFonts.inter(
      fontWeight: FontWeight.w600, color: kPrimary1, fontSize: 16.sp);
  TextStyle get textFilter => GoogleFonts.inter(
      fontWeight: FontWeight.w400, color: kPrimary1, fontSize: 12.sp);
}
