import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/typograpy/typo.dart';

class LoginErrorDialog extends StatelessWidget {
  const LoginErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 310, horizontal: 32),
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login Gagal',
                      style: AppTextTheme.current.title2,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Email atau Password anda salah',
                    style: AppTextTheme.current.title1,
                  ),
                  SizedBox(height: 24.h),
                  // Align(
                  //     alignment: Alignment.bottomRight,
                  //     child: SizedBox(
                  //       height: 34.h,
                  //       width: 100.w,
                  //       child: PrimaryBtnBlue(
                  //         text: 'Kembali',
                  //         onPressed: () => Get.back(),
                  //       ),
                  //     )),
                ],
              ),
            ),
          ),
        ));
  }
}
