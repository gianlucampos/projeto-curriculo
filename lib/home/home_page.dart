import 'package:curriculo_flutter/core/app_colors.dart';
import 'package:curriculo_flutter/experience/experience_widget.dart';
import 'package:curriculo_flutter/profile/profile_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool addPadding = MediaQuery.of(context).size.width > 1400;
    return Container(
      color: AppColors.background,
      child: Padding(
        padding: addPadding
            ? const EdgeInsets.symmetric(horizontal: 300, vertical: 20)
            : const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: const [
            ProfileWidget(),
            ExperienceWidget(),
          ],
        ),
      ),
    );
  }
}
