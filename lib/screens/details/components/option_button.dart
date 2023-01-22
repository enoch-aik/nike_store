import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/src/res/colors.dart';

Widget optionButton({
  required Widget child,
  double? contentPadding,
  required int index,
  required int value,
  double? width,
  double? height,
}) {
  return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: EdgeInsets.all(contentPadding ?? 5),
      width: width ?? 32.w,
      height: height ?? 32.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
              color: value == index ? CustomColors.black : const Color(0xffE0E0E1),
              width: 0.82)),
      child: child);
}
