import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class StyledListViewItem extends StatelessWidget {
  const StyledListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: AppColors.lightPinkBackground,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: .end,
                spacing: 4.h,
                children: [
                  Text(
                    AppStrings.sessionFour,
                    textAlign: .right,
                    style: AppStyles.font14W400Black,
                  ),
                  Text(
                    AppStrings.hairTreatment,
                    style: AppStyles.font12W400DarkGray,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 6.w,
                    children: [
                      ItemIcon(text: AppStrings.time, icon: Icons.access_time),
                      ItemIcon(
                        text: AppStrings.octoberDate,
                        icon: Icons.calendar_month,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.notifications, color: AppColors.mediumPurple),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemIcon extends StatelessWidget {
  const ItemIcon({super.key, required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.w,
      children: [
        Text(text, style: AppStyles.font11W400Black),
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: AppColors.linearGradientIcon,
          ).createShader(bounds),
          child: Icon(icon, color: Colors.white, size: 12.sp),
        ),
      ],
    );
  }
}
