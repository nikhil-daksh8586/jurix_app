import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/images/t_circular_image.dart';
import 'package:jurix_app/common/widgets/text/product_price_text.dart';
import 'package:jurix_app/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:jurix_app/utils/constants/enums.dart';
import 'package:jurix_app/utils/constants/image_strings.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../common/widgets/text/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMataData extends StatelessWidget {
  const TProductMataData({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// -- Price & Sale price
        Row(
          children: [

            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),),
            const SizedBox(width: TSizes.spaceBtwItems,),

            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleMedium!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: '172', isLarge: true,)

          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        /// Title
        TProductTitleText(title: 'Green Nike Air Shoe'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),


        /// Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),


        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.shoeIcon,
            width: 32,
            height: 32,
            ),
            TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        ),
      ]
    );
  }
}
