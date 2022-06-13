import 'package:curriculo_flutter/core/app_images.dart';
import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          // image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          image: AssetImage(AppImages.avatar),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
