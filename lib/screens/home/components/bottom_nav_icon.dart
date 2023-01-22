import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/src/res/colors.dart';
import 'package:nike_store/src/widgets/nav_indicator.dart';

Widget bottomNavIcon(
    {required IconData icon, required int value, required int index}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
    children: [
      value == index?
      CustomPaint(
        size: Size(69.w, 17.h),
        painter: RPSCustomPainter(),
      ): SizedBox(height: 17.h,width: 69.w,),
      Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Icon(icon,color: value == index? CustomColors.black:const Color(0xff838383),),
      ),
    ],
  );
}
