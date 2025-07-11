import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Padding(
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// -- Row 1
              Row(
                children: [
                  /// 1- Icon
                  Icon(Iconsax.ship),
                  SizedBox(width: TSizes.spaceBtwItems / 2),

                  /// 2 - Status & Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.apply(color: TColors.primary),
                        ),
                        Text(
                          '7 JULY 2025',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),

                  /// 3 - Icon
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
                  ),

                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// -- Row 2
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        /// 1- Icon
                        Icon(Iconsax.tag),
                        SizedBox(width: TSizes.spaceBtwItems / 2),

                        /// 2 - Status & Date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                'TD75589X',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        /// 1- Icon
                        Icon(Iconsax.calendar),
                        SizedBox(width: TSizes.spaceBtwItems / 2),

                        /// 2 - Status & Date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '24 JULY 2025',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
