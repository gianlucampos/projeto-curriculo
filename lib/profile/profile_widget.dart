import 'package:curriculo_flutter/core/app_text_styles.dart';
import 'package:curriculo_flutter/profile/widgets/picture_widget.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool changeWidth = MediaQuery.of(context).size.width < 1410;
    bool isMobileWidth = MediaQuery.of(context).size.width < 950;

    return Card(
      elevation: 8,
      shadowColor: AppColors.grey,
      child: Container(
        width: isMobileWidth
            ? 450
            : changeWidth
                ? MediaQuery.of(context).size.width * 0.3125
                : MediaQuery.of(context).size.width * 0.2,
        height: double.infinity,
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            buildContactInfo(),
          ],
        ),
      ),
    );
  }

  Expanded buildContactInfo() {
    return Expanded(
      child: ListView(
        // padding:
        //     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            title: Text('Desenvolvedor de software'),
            leading: Icon(Icons.badge, color: AppColors.aqua),
          ),
          ListTile(
            title: Text('Brasil, Pelotas, RS'),
            leading: Icon(Icons.house, color: AppColors.aqua),
          ),
          ListTile(
            title: Text('gianlucampos97@gmail.com'),
            leading: Icon(Icons.mail, color: AppColors.aqua),
          ),
          ListTile(
            title: Text('github.com/gianlucampos'),
            leading: Icon(Icons.developer_board, color: AppColors.aqua),
          ),
          Divider(indent: 10, endIndent: 10),
          buildSkills(),
        ],
      ),
    );
  }

  Widget buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Skills', style: AppTextStyles.titleBold),
          leading: Icon(Icons.star, color: AppColors.aqua),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text('Linguagens', style: AppTextStyles.body18),
        ),
        buildImageFromNetwork()
      ],
    );
  }

  Widget buildImageFromNetwork() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            //TODO Flutter não consegue ler imagem no formato svg
            // image: NetworkImage(
            //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            image: NetworkImage(
                'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
