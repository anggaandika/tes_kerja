import 'package:flutter/material.dart';
import 'package:tes_kerja/components/main.dart';
import 'package:tes_kerja/util/main.dart';

import 'components/body.dart';

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);
  static String routeName = "/base";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
