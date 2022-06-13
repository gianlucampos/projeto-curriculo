import 'package:curriculo_flutter/core/app_text_styles.dart';
import 'package:curriculo_flutter/profile/widgets/picture_widget.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: AppColors.grey,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PictureWidget(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  'Gianluca de Campos',
                  style: AppTextStyles.heading,
                ),
                decoration: BoxDecoration(
                    color: AppColors.aqua,
                    border: Border.all(width: 8, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
