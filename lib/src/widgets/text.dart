import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store/src/res/colors.dart';

class KText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? lineHeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final TextOverflow? overflow;

  const KText(this.text,
      {Key? key,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.fontStyle,
      this.lineHeight,
      this.textAlign,
      this.decoration,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: GoogleFonts.workSans().copyWith(
          decoration: decoration,
          fontSize: fontSize ?? 14.sp,
          fontStyle: fontStyle,
          fontWeight: fontWeight ?? FontWeight.w300,
          color: color ?? CustomColors.textColor,
          height: lineHeight),
    );
  }
}
