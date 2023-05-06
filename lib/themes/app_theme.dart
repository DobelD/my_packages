import 'package:flutter/material.dart';

import 'colors/colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light().copyWith(
        useMaterial3: false,
        scaffoldBackgroundColor: kMainBackground,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: kMain,
          onPrimary: kMain,
          secondary: kBlack,
          onSecondary: kBlack,
          error: kRed,
          onError: kRed,
          background: kMainBackground,
          onBackground: kMainBackground,
          surface: kWhite,
          onSurface: kWhite,
        ),
        // iconTheme: IconThemeData(size: 24.w, color: kMain),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: kWhite,
        //   unselectedLabelStyle: GoogleFonts.inter(
        //       fontSize: 10.sp, color: kGrey2, fontWeight: FontWeight.w500),
        //   selectedLabelStyle: GoogleFonts.inter(
        //       fontSize: 10.sp, color: kGrey2, fontWeight: FontWeight.bold),
        //   selectedIconTheme: IconThemeData(size: 24.w, color: kMain),
        //   unselectedIconTheme: IconThemeData(size: 24.w, color: kPrimary1),
        //   showSelectedLabels: true,
        //   showUnselectedLabels: true,
        //   type: BottomNavigationBarType.fixed,
        //   selectedItemColor: kMain,
        //   unselectedItemColor: kGrey2,
        // ),
      );
}
