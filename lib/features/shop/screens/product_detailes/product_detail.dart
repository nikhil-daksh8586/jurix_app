import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:jurix_app/common/widgets/icon/t_circular_icon.dart';
import 'package:jurix_app/common/widgets/images/T_rounded_image.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_attributes.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_detail_image_slider.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_meta_data.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/rating_and_share.dart';
import 'package:jurix_app/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1-- Product Image Slider
            TProductImageSlider(),

            /// 2-- Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// -- Rating & Share Button
                  TRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  TProductMataData(),

                  /// -- Attribute
                  TProductAttributes(),
                  /// -- Checkout Button
                  /// -- description
                  /// -- Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}