import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/src/widgets/text.dart';

import 'option_button.dart';

class ShoeSize extends StatelessWidget {
  const ShoeSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> shoeSize = ValueNotifier(6);
    return ValueListenableBuilder(
        valueListenable: shoeSize,
        builder: (context, shoeState, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 11.h),
                child: KText(
                  'Size',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ...List.generate(
                  4,
                  (index) => GestureDetector(onTap: (){
                    shoeSize.value = 6+index;
                  },
                    child: Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: optionButton(
                              width: 56.w,
                              child: KText('UK ${6 + index}'),
                              index:  6 + index,value: shoeState),
                        ),
                  ))
            ],
          );
        });
  }
}
