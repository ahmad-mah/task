import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';
import '../core/widgets/app_bar_icon.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          spacing: 16.w,
          children: [
            AppBarIcon(Icons.shopping_bag_outlined ,onTap: () {},),
            AppBarIcon(FontAwesomeIcons.bell ,onTap: () {},),
          ],
        ),
        Row(
          spacing: 9.w,
          children: [
            Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .end,
              children: [
                Text(
                  AppStrings.welcomeMessage,
                  style: AppStyles.font16W400Black,
                ),
                SizedBox(height: 4.h),
                Text(AppStrings.howAreYou, style: AppStyles.font12W400Gray),
              ],
            ),
            AppBarIcon(Icons.qr_code_scanner_outlined ,onTap: () {},),
          ],
        ),
      ],
    );
  }
}
