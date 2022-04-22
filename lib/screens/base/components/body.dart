import 'package:flutter/material.dart';
import 'package:tes_kerja/screens/base/components/popular_product.dart';

import '../../../util/main.dart';
import 'search_field.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const SearchField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
