import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_carts/product_card_verticle.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popularity',
                  ].map((option) => DropdownMenuItem(value: option, child: Text(option)),).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Products
        TGridLayout(
          itemCount: 6,
          itemBuilder: (_, index) => const TProductCardVerticle(),
        ),
      ],
    );
  }
}
