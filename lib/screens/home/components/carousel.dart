import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/src/constants.dart';
import 'package:nike_store/src/res/colors.dart';
import 'package:nike_store/src/widgets/button.dart';
import 'package:nike_store/src/widgets/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HeaderCarousel extends StatelessWidget {
  const HeaderCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 334.w,
                height: 150.h,
                decoration: BoxDecoration(
                    color: CustomColors.containerColor,
                    borderRadius: BorderRadius.circular(18.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            const TextSpan(
                              text: '20% ',
                            ),
                            TextSpan(
                                text: 'Discount',
                                style: TextStyle(fontSize: 19.sp)),
                          ],
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24.sp))),
                      const KText('on your first purchase'),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 22.h,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 96.w,
                            height: 29.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: CustomColors.black),
                            alignment: Alignment.center,
                            child: KText(
                              'Shop now',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                right: 0,
                child: Image.asset(
                  greenShoe,
                  width: 160.w,
                ))
          ],
        ),
        Padding(
          padding:  EdgeInsets.only(top: 16.h),
          child: AnimatedSmoothIndicator(
            activeIndex: 1,
            count: 4,
            effect: JumpingDotEffect(
                dotColor: const Color(0xffC4C4C4),
                activeDotColor: CustomColors.black,
                dotHeight: 8.w,
                dotWidth: 8.w),
          ),
        )
      ],
    );
  }
}
