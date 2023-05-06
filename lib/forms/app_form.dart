import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/colors/colors.dart';
import '../../themes/decoration/app_radius.dart';
import '../../themes/typograpy/typo.dart';

enum LabelPosition { top, left, none }

class AppForm extends StatefulWidget {
  const AppForm(
      {Key? key,
      required this.controller,
      this.labelText,
      this.labelPosition = LabelPosition.top,
      this.hintText,
      this.linkText,
      this.linkOnPressed,
      this.enabled = true,
      this.errText,
      this.validator,
      this.keyboardType,
      this.onSaved,
      this.textValidation,
      this.passConfirm = false,
      this.isEmail = false,
      this.firstPassword,
      this.onChange})
      : minLines = 1,
        maxLines = 1,
        isTypePassword = false,
        assert(labelPosition == LabelPosition.left
            ? linkText == null
            : linkText == linkText),
        assert(
            linkText != null ? linkOnPressed != null : linkOnPressed == null),
        super(key: key);

  const AppForm.password(
      {Key? key,
      required this.controller,
      this.labelText,
      this.labelPosition = LabelPosition.top,
      this.hintText,
      this.linkText,
      this.linkOnPressed,
      this.enabled = true,
      this.errText,
      this.validator,
      this.keyboardType,
      this.onSaved,
      this.textValidation,
      this.passConfirm = false,
      this.isEmail = false,
      this.firstPassword,
      this.onChange})
      : minLines = 1,
        maxLines = 1,
        isTypePassword = true,
        assert(labelPosition == LabelPosition.left
            ? linkText == null
            : linkText == linkText),
        assert(
            linkText != null ? linkOnPressed != null : linkOnPressed == null),
        super(key: key);

  final TextEditingController controller;
  final String? labelText;
  final LabelPosition labelPosition;
  final String? hintText;
  final String? linkText;
  final VoidCallback? linkOnPressed;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final bool isTypePassword;
  final String? errText;
  final dynamic validator;
  final dynamic onSaved;
  final String? textValidation;
  final bool passConfirm;
  final String? firstPassword;
  final ValueChanged<String>? onChange;
  final bool isEmail;

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  bool isObscureText = false;

  @override
  void initState() {
    super.initState();

    isObscureText = widget.isTypePassword;
  }

  bool get isLabelTextDefined => widget.labelText?.isNotEmpty ?? false;

  OutlineInputBorder get _borderStyle => OutlineInputBorder(
        borderRadius: AppRadius.middleAll,
        borderSide: BorderSide(color: kGrey2, width: 1.w),
      );
  OutlineInputBorder get _errBorderStyle => OutlineInputBorder(
        borderRadius: AppRadius.middleAll,
        borderSide: BorderSide(color: kWarning1, width: 1.w),
      );
  int get _minLines => widget.minLines ?? 1;

  int get _maxLines => widget.maxLines ?? _minLines;

  void suffixPasswordOnTap() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.labelText}',
          style: AppTextTheme.current.labelForm,
        ),
        SizedBox(height: 4.w),
        SizedBox(
          child: TextFormField(
            controller: widget.controller,
            enabled: widget.enabled,
            maxLines: _maxLines,
            minLines: _minLines,
            cursorColor: kPrimary1,
            keyboardType: widget.keyboardType,
            obscureText: isObscureText,
            validator: widget.isEmail
                ? (String? value) {
                    bool emailValid =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value!);
                    if (value.isEmpty) {
                      return '${widget.labelText} wajib diisi';
                    } else if (widget.isTypePassword
                        ? value.length <= 5
                        : !emailValid) {
                      return widget.isTypePassword
                          ? "Masukkan ${widget.labelText} minimal 6 karakter "
                          : widget.labelText == "Email"
                              ? "Format ${widget.labelText} tidak valid"
                              : null;
                    } else if (widget.passConfirm == true &&
                        widget.isTypePassword == true &&
                        value != widget.firstPassword) {
                      return "Password tidak sama";
                    }
                    return null;
                  }
                : null,
            onSaved: widget.onSaved,
            onChanged: widget.onChange,
            style: AppTextTheme.current.textForm,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: widget.enabled ? kWhite : kSofterGrey,
              hintText: widget.hintText,
              hintStyle: AppTextTheme.current.hintForm,
              errorStyle: AppTextTheme.current.errorText,
              errorText: widget.errText,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
              border: _borderStyle,
              enabledBorder: _borderStyle,
              focusedBorder: _borderStyle,
              errorBorder: _errBorderStyle,
              disabledBorder: _borderStyle,
              focusedErrorBorder: _borderStyle,
              enabled: widget.enabled,
              suffixIconConstraints: BoxConstraints(maxHeight: 38.w),
              suffixIcon: widget.isTypePassword
                  ? IconButton(
                      onPressed: suffixPasswordOnTap,
                      icon: Icon(
                        isObscureText ? Icons.visibility : Icons.visibility_off,
                        size: 16.w,
                        color: kGrey1,
                      ),
                    )
                  : null,
            ),
          ),
        )
      ],
    ));
  }
}
