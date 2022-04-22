import 'package:flutter/material.dart';
import 'package:tes_kerja/screens/main.dart';
import 'package:tes_kerja/util/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: Login.routeName,
      routes: routes,
    );
  }
}
