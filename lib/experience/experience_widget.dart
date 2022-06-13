import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 8,
        shadowColor: AppColors.grey,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: double.infinity,
          color: AppColors.white,
        ),
      ),
    );
  }
}
