// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tes_kerja/components/main.dart';
import 'package:tes_kerja/util/main.dart';

import 'components/body.dart';

class Galery extends StatelessWidget {
  const Galery({Key? key}) : super(key: key);
  static String routeName = "/galery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Galery"),
        centerTitle: true,
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.galery),
    );
  }
}
