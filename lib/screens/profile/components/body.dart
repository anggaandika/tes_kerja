import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tes_kerja/models/main.dart';
import 'package:tes_kerja/models/profil.dart';
import 'package:tes_kerja/screens/main.dart';
import 'package:tes_kerja/service/get_api.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: FutureBuilder(
          future: GetApi().getRequest('user.json'),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              var _data = GetRespon.fromJson(snapshot.data);
              var _profil = Profil.fromJson(_data.data);
              return Column(
                children: [
                  ProfilePic(
                    pic: _profil.avatar.toString(),
                  ),
                  const SizedBox(height: 20),
                  ProfileMenu(
                    text: _profil.username.toString(),
                    icon: Icons.person_rounded,
                    press: () {},
                  ),
                  ProfileMenu(
                    text: _profil.fullname.toString(),
                    icon: Icons.person,
                    press: () => {},
                  ),
                  ProfileMenu(
                    text: _profil.email.toString(),
                    icon: Icons.email,
                    press: () {},
                  ),
                  ProfileMenu(
                    text: _profil.phone.toString(),
                    icon: Icons.phone,
                    press: () {},
                  ),
                  ProfileMenu(
                    text: "Log Out",
                    icon: Icons.logout,
                    press: () => Navigator.pushReplacementNamed(
                        context, Login.routeName),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          }),
    );
  }
}
