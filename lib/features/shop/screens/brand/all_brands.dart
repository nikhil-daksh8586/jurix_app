import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/common/widgets/brands/brand_card.dart';
import 'package:jurix_app/common/widgets/layouts/grid_layout.dart';
import 'package:jurix_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:jurix_app/common/widgets/text/section_heading.dart';
import 'package:get/get.dart';
import 'package:jurix_app/features/shop/screens/brand/brand_products.dart';

import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(title: 'Brands', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              /// Brands
              TGridLayout(itemCount: 8, itemBuilder: (context, index) => TBrandcard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),),
              mainAxisExtent: 80,)
            ],
          ),
        ),
      ),
    );
  }
}
