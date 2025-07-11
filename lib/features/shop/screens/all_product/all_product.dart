import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/common/widgets/layouts/grid_layout.dart';
import 'package:jurix_app/common/widgets/products/product_carts/product_card_verticle.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProduct(),
        ),
      ),
    );
  }
}
