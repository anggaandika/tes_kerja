import 'package:flutter/material.dart';
import 'package:tes_kerja/components/main.dart';
import 'package:tes_kerja/models/main.dart';
import 'package:tes_kerja/service/get_api.dart';
import 'package:tes_kerja/util/main.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Galery", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: FutureBuilder(
            future: GetApi().getRequest('gallery.json'),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data != null) {
                var _data = GetResponList.fromJson(snapshot.data);
                return GridView.builder(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10)),
                  itemCount: _data.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    var _galery = Galery.fromJson(_data.data[index]);
                    return GaleryView(product: _galery);
                  },
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 182.5,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                );
              }

              return const Center(
                child: Text("Data Kosong"),
              );
            },
          ),
        ),
      ],
    );
  }
}
