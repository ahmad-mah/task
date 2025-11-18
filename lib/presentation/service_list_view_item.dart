import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/service_model.dart';
import '../core/utils/app_colors.dart';

class ServiceListViewItem extends StatelessWidget {
  const ServiceListViewItem({super.key, required this.service});
  final ServiceModel service;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.lightPinkBackground,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Column(
              spacing: 8.h,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.r),
                        topLeft: Radius.circular(6.r),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: service.images[0].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 4.h,
                    crossAxisAlignment: .end,
                    children: [
                      Expanded(
                        child: Text(
                          service.title,
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 14.sp,
                            overflow: TextOverflow.ellipsis,

                            fontWeight: FontWeight.w400,
                            color: AppColors.darkGray,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          service.description,

                          textAlign: TextAlign.end,
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,

                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mediumGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(6.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: AppColors.linearGradientIcon,
                  ).createShader(bounds),
                  child: Text(
                    "ج${service.price}",
                    style: TextStyle(fontSize: 13.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
