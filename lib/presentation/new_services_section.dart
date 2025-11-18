import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/utils/app_strings.dart';
import '../core/utils/app_styles.dart';
import '../core/widgets/header_list_view.dart';
import '../core/widgets/styled_loading.dart';
import 'providers/home_provider.dart';
import 'service_list_view_item.dart';

class NewServicesSection extends StatelessWidget {
  const NewServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            HeaderListView(
              title: AppStrings.newServices,
              onViewAllPressed: () {},
            ),
            SizedBox(
              height: 180.h,
              child: provider.isLoading
                  ? const Center(child: StyledLoading())
                  : provider.errorMessage != null
                  ? Center(
                      child: Text(
                        provider.errorMessage!,
                        style: AppStyles.font16W400Black,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : provider.services.isEmpty
                  ? Center(
                      child: Text(
                        AppStrings.noServicesAvailable,
                        style: AppStyles.font16W400Black,
                      ),
                    )
                  : ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: provider.services.length,
                      itemBuilder: (context, index) {
                        return ServiceListViewItem(
                          service: provider.services[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10.w),
                    ),
            ),
          ],
        );
      },
    );
  }
}
