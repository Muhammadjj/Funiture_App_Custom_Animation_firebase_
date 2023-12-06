import 'package:flutter/material.dart';
import 'package:furniture_app/Resources/resources.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Bosnas Posna",
          style: Resources.textStyle.productNameTextStyle(),
        ),
        Text(
          "Footstool with storage, Ransta",
          style: Resources.textStyle
              .productDetailTextStyle()
              .copyWith(color: Colors.grey[600]),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "124\$",
          style: Resources.textStyle.productPriceTextStyle(),
        ),
      ],
    );
  }
}
