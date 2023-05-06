import 'package:flutter/material.dart';
import '../themes/colors/colors.dart';
import '../themes/decoration/app_padding.dart';
import '../themes/decoration/app_radius.dart';

class CardContain extends StatelessWidget {
  const CardContain({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: DefaultPadding.all,
        decoration: BoxDecoration(
            borderRadius: AppRadius.all,
            color: kWhite,
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF6680C5).withOpacity(0.08),
                  blurRadius: 14,
                  offset: const Offset(0, 8))
            ]),
        child: child);
  }
}
