import 'package:flutter/material.dart';
import 'package:tes_kerja/util/main.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.press,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: press,
              child: const Text(
                "See More",
                style: TextStyle(color: Color(0xFFBBBBBB)),
              ),
            ),
          ],
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
