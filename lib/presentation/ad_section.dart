import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/app_images.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';

class AdSection extends StatelessWidget {
  const AdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.linearGradientIcon),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: Image.asset(AppImages.banner)),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: .end,
              spacing: 8.h,

              children: [
                Text(
                  AppStrings.investInBeauty,
                  textAlign: TextAlign.right,
                  style: AppStyles.font20W400White,
                ),
                Text(
                  AppStrings.earnPoints,
                  textAlign: TextAlign.right,
                  style: AppStyles.font10W400White,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
