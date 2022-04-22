import 'package:flutter/material.dart';
import 'package:tes_kerja/util/main.dart';

import 'components/body.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";

  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
