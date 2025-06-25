import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/products/product_carts/product_card_verticle.dart';
import 'package:jurix_app/common/widgets/text/section_heading.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import 'brands/brand_show_case.dart';
import 'layouts/grid_layout.dart';

class TCategoriesTab extends StatelessWidget {
  const TCategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            const TBrandShowcase(
              images: [
                TImages.shoeImage1,
                TImages.shoeImage2,
                TImages.shoeImage3,
              ],
            ),
            const TBrandShowcase(
              images: [
                TImages.shoeImage1,
                TImages.shoeImage2,
                TImages.shoeImage3,
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// -- Products you May like
            TSectionHeading(title: 'You might like', onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems),

            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVerticle(),),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    ],
    );
  }
}
