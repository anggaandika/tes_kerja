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
        FutureBuilder(
            future: GetApi().getRequest('place.json'),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data != null) {
                var _data = GetRespon.fromJson(snapshot.data);
                var _place = Place.fromJson(_data.data);
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: SectionTitle(
                      title: _place.header!.title.toString(),
                      subTitle: _place.header!.subtitle.toString(),
                      press: () {}),
                );
              }
              return const SizedBox.shrink();
            }),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FutureBuilder(
              future: GetApi().getRequest('place.json'),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  var _data = GetRespon.fromJson(snapshot.data);
                  var _place = Place.fromJson(_data.data);
                  return Column(
                    children: [
                      ...List.generate(
                        _place.content!.length,
                        (index) {
                          if (_data.data.isNotEmpty) {
                            return ProductCard(product: _place.content![index]);
                          }

                          return const SizedBox
                              .shrink(); // here by default width and height is 0
                        },
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  );
                }
                return const Center(child: Text("Data Kosong"));
              }),
        )
      ],
    );
  }
}
