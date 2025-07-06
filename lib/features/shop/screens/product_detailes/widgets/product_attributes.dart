import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/common/widgets/text/product_price_text.dart';
import 'package:jurix_app/common/widgets/text/product_title_text.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                /// -- Title, Price & Stock Status
                Row(
                  children: [
                    const TSectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TProductTitleText(
                              title: 'Price : ',
                              smallSize: true,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems),

                            /// Actual Price
                            Text(
                              '₹25',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .apply(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems),

                            /// Sale Price
                            const TProductPriceText(price: '20'),
                          ],
                        ),

                        /// Stock Status
                        Row(
                          children: [
                            const TProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                /// Variation Description
                const TProductTitleText(
                  title:
                      'This is the Description of the Product and it can go upto max 4 lines.',
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// -- Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// product color selection

            Wrap(
              spacing: 8,
              children: [
                const TSectionHeading(title: 'Colors', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            ),

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// product size selection
            Wrap(
              spacing: 8,
              children: [
                const TSectionHeading(title: 'Sizes', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            )

          ],
        ),
      ],
    );
  }
}
