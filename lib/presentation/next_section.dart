import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/widgets/styled_list_view_item.dart';

import '../core/utils/app_strings.dart';
import '../core/widgets/header_list_view.dart';

class NextSection extends StatelessWidget {
  const NextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderListView(title: AppStrings.nextSession, onViewAllPressed: () {}),
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return StyledListViewItem();
            },
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
          ),
        ),
      ],
    );
  }
}
