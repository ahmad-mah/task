import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';
import '../data/models/banner_model.dart';
import 'providers/home_provider.dart';

class BannersSection extends StatelessWidget {
  const BannersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final banners = context.read<HomeProvider>().banners;

    return Column(
      children: [
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return BannerListViewItem(banners: banners, index: index);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
          ),
        ),
      ],
    );
  }
}

class BannerListViewItem extends StatelessWidget {
  const BannerListViewItem({
    super.key,
    required this.banners,
    required this.index,
  });

  final List<BannerModel> banners;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      width: 200.w,
      decoration: BoxDecoration(
        color: AppColors.creamBackground,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        spacing: 9.w,
        crossAxisAlignment: .center,
        mainAxisAlignment: .spaceAround,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: banners[index].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                AppStrings.services,
                style: AppStyles.font17W400Black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
