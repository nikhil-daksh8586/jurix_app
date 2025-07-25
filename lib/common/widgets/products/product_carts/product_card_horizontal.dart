import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/common/widgets/icon/t_circular_icon.dart';
import 'package:jurix_app/common/widgets/images/t_rounded_image.dart';
import 'package:jurix_app/common/widgets/text/product_price_text.dart';
import 'package:jurix_app/common/widgets/text/product_title_text.dart';
import 'package:jurix_app/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [TShadowStyle.verticleProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
      ),
      child: Row(children: [

        /// Thumbnail, Wishlist Button & Discount Tag
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.white,
          child: Stack(

            /// -- Thumbnail
            children: [
              SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.shoeImage1, applyImageRadius: true,),),

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
        
        /// -- Details
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: "Red Nike Sports shoes and shocks", smallSize: true,),
                    SizedBox(height: TSizes.spaceBtwItems / 2,),
                    TBrandTitleWithVerifiedIcon(title: 'Nike'),
                  ],
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    /// Pricing
                    Flexible(child: const TProductPriceText(price: '256')),

                    /// Add to Cart
                    Container(
                      decoration: const BoxDecoration(
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
                )
              ],
            ),
          ),
        )
      ],
      ),
    );
  }
}
