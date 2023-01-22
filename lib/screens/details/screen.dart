import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/screens/details/components/option_button.dart';
import 'package:nike_store/screens/details/components/shoe_size.dart';
import 'package:nike_store/src/constants.dart';
import 'package:nike_store/src/res/colors.dart';
import 'package:nike_store/src/widgets/nav_icons.dart';
import 'package:nike_store/src/widgets/text.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> shoeColor = ValueNotifier(0);

    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(22.w, 16.h, 22.w, 0),
            child: Column(
              //padding: EdgeInsets.fromLTRB(22.w, 16.h, 22.w, 0),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            backIcon,
                            width: 36.w,
                            height: 36.w,
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                    KText(
                      'Air Max 200 SE',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Badge(
                      badgeContent: KText(
                        '2',
                        fontSize: 10.sp,
                        color: CustomColors.white,
                      ),
                      position: BadgePosition.topStart(),
                      badgeColor: CustomColors.black,
                      child: SvgPicture.asset(
                        cartIcon,
                        width: 36.w,
                        height: 36.w,
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 485.h,
                  width: size.width,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Transform.rotate(
                            angle: 1.5708,
                            child: KText(
                              'NIKE',
                              fontSize: 160.sp,
                              fontWeight: FontWeight.w900,
                              color: CustomColors.black.withOpacity(0.1),
                              fontStyle: FontStyle.italic,
                            ),
                          )),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Image.asset(
                            fullRedShoe,
                            width: 300,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 117.h,
                        right: 0,
                        child: optionButton(
                            value: 1,
                            index: 1,
                            child: const Icon(
                              BottomNavIcons.bookmark,
                              size: 14,
                            )),
                      ),
                      ValueListenableBuilder(
                          valueListenable: shoeColor,
                          builder: (context, colorState, _) {
                            return Positioned(
                              top: 245.h,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  KText(
                                    'Colour',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.h, bottom: 17.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        shoeColor.value = 0;
                                      },
                                      child: optionButton(
                                        index: 0,
                                        value: colorState,
                                        child: Container(
                                          width: 14.w,
                                          height: 14.w,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffCD2626),
                                              borderRadius:
                                                  BorderRadius.circular(2.r)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      shoeColor.value = 1;
                                    },
                                    child: optionButton(
                                        index: 1,
                                        value: colorState,
                                        child: Container(
                                          width: 14.w,
                                          height: 14.w,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff394376),
                                              borderRadius:
                                                  BorderRadius.circular(2.r)),
                                        )),
                                  ),
                                ],
                              ),
                            );
                          }),
                      Positioned(
                        top: 90.h,
                        left: 0,
                        child: const ShoeSize(),
                      ),
                      Positioned(
                        top: 423.h,
                        left: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            KText(
                              '\$30.99',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            KText(
                              '10% OFF',
                              fontSize: 12.sp,
                              color: const Color(0xffBE3032),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(
                  nikeBox,
                  filterQuality: FilterQuality.high,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 128.h,
            left: 135.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: KText(
                    'Swipe down to add',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SvgPicture.asset(
                  addToCart,
                  width: 42.w,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
