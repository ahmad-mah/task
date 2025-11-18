import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_app/core/widgets/product_list_view_item.dart';

import '../core/utils/app_strings.dart';
import '../core/widgets/header_list_view.dart';
import '../data/providers/home_provider.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.read<HomeProvider>().products;
    return Column(
      children: [
        HeaderListView(title: AppStrings.bestProducts, onViewAllPressed: () {}),
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductListViewItem(product: products[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
          ),
        ),
      ],
    );
  }
}
