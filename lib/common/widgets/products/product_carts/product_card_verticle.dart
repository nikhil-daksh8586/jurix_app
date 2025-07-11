import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/styles/shadows.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/common/widgets/images/t_rounded_image.dart';
import 'package:jurix_app/common/widgets/text/product_title_text.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/constants/image_strings.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../../features/shop/screens/product_detailes/product_detail.dart';
import '../../icon/t_circular_icon.dart';
import '../../text/product_price_text.dart';
import '../../text/t_brand_title_text_with_verified_icon.dart';

class TProductCardVerticle extends StatelessWidget {
  const TProductCardVerticle ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticleProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist button, Discount Tag
            TRoundedContainer(
              height: 100,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail image
                  const TRoundedImage(imageUrl: TImages.shoeImage1, applyImageRadius: true,),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),

                    ),
                  ),

                  /// -- Favourite Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),

            /// -- Details
            const Padding(
              padding:  EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Air Shoe', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),
            /// spacer
            const Spacer(),
            /// price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: const TProductPriceText(price: '35.0',),
                ),

                /// add to cart button section
                Container(
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
