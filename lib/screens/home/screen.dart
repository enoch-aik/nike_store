import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/screens/home/components/carousel.dart';
import 'package:nike_store/screens/home/components/shoe_card.dart';
import 'package:nike_store/src/constants.dart';
import 'package:nike_store/src/res/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
          child: Scaffold(
            body: ListView(
              padding: EdgeInsets.fromLTRB(22.w, 16.h, 22.w, 0),
              children: [
                //APP BAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          drawerIcon,
                          width: 36.w,
                          height: 36.w,
                          fit: BoxFit.none,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Image.asset(
                            logo,
                            filterQuality: FilterQuality.high,
                          ),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      cartIcon,
                      width: 36.w,
                      height: 36.w,
                      fit: BoxFit.scaleDown,
                    )
                  ],
                ),
                //CAROUSEL
                Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 21.h),
                  child: const HeaderCarousel(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.h),
                  child: TabBar(
                      labelPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: CustomColors.unselectedTab,
                      isScrollable: true,
                      indicator: const ShapeDecoration(
                          shape: StadiumBorder(), color: CustomColors.black),
                      tabs: const [
                        Tab(text: 'All'),
                        Tab(text: 'Running'),
                        Tab(text: 'Sneaker'),
                        Tab(text: 'Formal'),
                        Tab(text: 'Casual'),
                      ]),
                ),
                /*GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 26.h,
              children: List.generate(4, (index) => shoeCard()),
            )*/

                //Shoe cards
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [shoeCard(allShoes[0]), shoeCard(allShoes[1])],),
                SizedBox(height: 26.h),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [shoeCard(allShoes[2]), shoeCard(allShoes[3])],)
              ],
            ),
          )),
    );
  }
}
