import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ad_section.dart';
import 'app_bar_section.dart';
import 'banners_section.dart';
import 'new_services_section.dart';
import 'next_section.dart';
import 'products_section.dart';
import 'reminders_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: SingleChildScrollView(
        child: Column(
          spacing: 30.h,
          children: [
            AppBarSection(),
            AdSection(),
            NextSection(),
            BannersSection(),
            RemindersSection(),
            NewServicesSection(),
            ProductsSection(),
          ],
        ),
      ),
    );
  }
}
