import 'package:flutter/material.dart';
import 'package:tes_kerja/models/main.dart';
import 'package:tes_kerja/util/main.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Content product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        bottom: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(SizeConfig.screenWidth),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //   context,
          //   DetailsScreen.routeName,
          //   arguments: ProductDetailsArguments(product: product),
          // ),
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: product.id.toString(),
                  child: Image.network(
                      product.image != null
                          ? "${product.image}"
                          : product.media!.first,
                      scale: getProportionateScreenWidth(5)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.toString(),
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      maxLines: 2,
                    ),
                    SizedBox(height: getProportionateScreenWidth(5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.content}",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(9),
                            fontWeight: FontWeight.w400,
                            color: kTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
