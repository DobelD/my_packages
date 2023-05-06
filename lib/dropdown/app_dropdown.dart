import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../themes/colors/colors.dart';
import '../../themes/decoration/app_radius.dart';
import '../../themes/typograpy/typo.dart';
import '../themes/decoration/app_padding.dart';

class AppDropdown<T extends Object> extends StatelessWidget {
  const AppDropdown(
      {super.key,
      this.label,
      this.items,
      this.onChange,
      this.value,
      this.isError = false,
      this.hint});

  final String? label;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChange;
  final T? value;
  final String? hint;
  final bool? isError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label', style: AppTextTheme.current?.labelForm),
        SizedBox(height: 8.h),
        Container(
            height: 36.h,
            width: MediaQuery.of(context).size.width,
            padding: MiddlePadding.side,
            decoration: BoxDecoration(
                color: kWhite,
                borderRadius: AppRadius.middleAll,
                border:
                    Border.all(color: isError == false ? kGrey2 : kWarning1)),
            child: Center(
              child: DropdownButton<T>(
                  underline: const SizedBox(),
                  isDense: true,
                  isExpanded: true,
                  value: value,
                  hint: Text(
                    "$hint...",
                    style: AppTextTheme.current?.hintForm,
                  ),
                  icon: SvgPicture.asset(
                    'assets/svg/chevron-down.svg',
                    height: 12.w,
                    width: 12.w,
                  ),
                  iconSize: 12,
                  items: items,
                  onChanged: onChange),
            ))
      ],
    ));
  }
}
