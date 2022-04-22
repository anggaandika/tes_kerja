import 'package:flutter/material.dart';
import 'package:tes_kerja/models/main.dart';
import 'package:tes_kerja/util/main.dart';

class GaleryView extends StatelessWidget {
  const GaleryView({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);
  final double width, aspectRetio;
  final Galery product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //   context,
          //   DetailsScreen.routeName,
          //   arguments: ProductDetailsArguments(product: product),
          // ),
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2.5,
                  child: Hero(
                    tag: product.hashCode,
                    child: Image.network(product.image!),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.caption.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
