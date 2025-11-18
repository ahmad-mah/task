import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class HeaderListView extends StatelessWidget {
  const HeaderListView({super.key, required this.title, this.onViewAllPressed});

  final String title;
  final VoidCallback? onViewAllPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onViewAllPressed,
            borderRadius: BorderRadius.circular(6.r),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: AppColors.linearGradientIcon,
                ).createShader(bounds),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
                  child: Text(AppStrings.viewAll, style: AppStyles.whiteText),
                ),
              ),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
