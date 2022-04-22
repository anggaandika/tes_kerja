import 'package:flutter/material.dart';
import 'package:tes_kerja/util/main.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Login dengan email dan password kamu  \nsetalah itu tekan tombol masuk",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const LoginForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // SizedBox(height: getProportionateScreenHeight(20)),
                // NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
