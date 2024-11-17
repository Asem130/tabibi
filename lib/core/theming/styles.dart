import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/theming/colors.dart';
import 'package:taqwa/core/theming/styles_helper.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManger.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: ColorsManger.mainBlue,
    fontSize: 24.sp,
    fontWeight: StylesHelper.bold,
  );
  static TextStyle font13GrayRegular = TextStyle(
    color: ColorsManger.gray,
    fontSize: 13.sp,
    fontWeight: StylesHelper.regular,
  );
  static TextStyle font14GrayRegular = TextStyle(
    color: ColorsManger.gray,
    fontSize: 14.sp,
    fontWeight: StylesHelper.regular,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    color: ColorsManger.lightGray,
    fontSize: 14.sp,
    fontWeight: StylesHelper.regular,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorsManger.lightGray,
    fontSize: 14.sp,
    fontWeight: StylesHelper.medium,
  );
}
