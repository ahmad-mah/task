import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/utils/app_strings.dart';
import '../core/widgets/header_list_view.dart';
import 'providers/home_provider.dart';
import 'service_list_view_item.dart';

class NewServicesSection extends StatelessWidget {
  const NewServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final services = context.read<HomeProvider>().services;

    return Column(
      children: [
        HeaderListView(title: AppStrings.newServices, onViewAllPressed: () {}),
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ServiceListViewItem(service: services[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
          ),
        ),
      ],
    );
  }
}
