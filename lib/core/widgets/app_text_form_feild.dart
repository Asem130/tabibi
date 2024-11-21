import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles.dart';

class AppTextFormFeild extends StatelessWidget {
  const AppTextFormFeild({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.cursorColor,
    this.controller,
    required this.validator,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final Color? backgroundColor;
  final TextStyle? hintTextStyle;
  final String hintText;
  final Color? cursorColor;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? ColorsManger.mainBlue,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManger.moreLightGray,
        isDense: true,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorsManger.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsManger.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorsManger.lighterGray, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsManger.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
