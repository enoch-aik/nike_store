import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/src/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          )
          //CAROUSEL

        ],
      ),
    ));
  }
}
