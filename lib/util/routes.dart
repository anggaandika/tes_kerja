import 'package:flutter/widgets.dart';
import 'package:tes_kerja/screens/main.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  Login.routeName: (context) => const Login(),
  Base.routeName: (context) => const Base(),
  Galery.routeName: (context) => const Galery(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
