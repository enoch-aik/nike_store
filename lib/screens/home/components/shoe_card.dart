import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/app/models/shoe.dart';
import 'package:nike_store/src/res/colors.dart';
import 'package:nike_store/src/widgets/text.dart';

Widget shoeCard(Shoe shoe) {
  return Container(
    width: 160.w,
    height: 237.h,
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
      color: CustomColors.containerColor,
      borderRadius: BorderRadius.circular(18.r),
    ),
    child: Column(
      children: [
        Image.asset(
          shoe.imageUrl,
          width: 140.w,
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(
              shoe.name,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  '\$${shoe.price}',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff374957).withOpacity(0.2),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_sharp,
                    size: 20,
                    color: CustomColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
