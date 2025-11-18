import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class StyledLoading extends StatelessWidget {
  const StyledLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(color: AppColors.deepPurple);
  }
}
