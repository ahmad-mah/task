import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../data/models/product_model.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.product});
  final ProductModel product;

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
                        imageUrl: product.images[0].image,
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
                          product.title,
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          style: AppStyles.font14W400DarkGray,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          product.description,
                          textAlign: TextAlign.end,
                          maxLines: 1,
                          style: AppStyles.font10W400LightGray,
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
                    "${AppStrings.pricePrefix}${product.price}",
                    style: AppStyles.font13White,
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
