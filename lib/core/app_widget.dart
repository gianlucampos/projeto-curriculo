import 'package:flutter/material.dart';

import '../home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curriculum Vitae",
      home: HomePage(),
    );
  }
}
