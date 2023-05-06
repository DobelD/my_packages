import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/decoration/app_radius.dart';
import '../../themes/typograpy/typo.dart';
import '../themes/colors/colors.dart';

class TextArea extends StatelessWidget {
  const TextArea({super.key, this.title, this.hint, this.controller});

  final String? title;
  final String? hint;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: title, style: AppTextTheme.current?.labelForm),
              TextSpan(text: '*', style: AppTextTheme.current?.labelForm),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 100.h,
          child: TextFormField(
            controller: controller,
            style: AppTextTheme.current?.textForm,
            cursorColor: kPrimary1,
            minLines: 8,
            keyboardType: TextInputType.multiline,
            maxLines: 10,
            decoration: InputDecoration(
                filled: true,
                fillColor: kWhite,
                hintText: hint,
                hintStyle: AppTextTheme.current?.hintText,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                border: OutlineInputBorder(
                    borderRadius: AppRadius.icon,
                    borderSide: const BorderSide(color: kGrey2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: AppRadius.icon,
                    borderSide: const BorderSide(
                      color: kGrey2,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: AppRadius.icon,
                    borderSide: const BorderSide(
                      color: kGrey2,
                    ))),
          ),
        ),
      ],
    );
  }
}
