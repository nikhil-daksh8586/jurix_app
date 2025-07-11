import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/images/t_rounded_image.dart';
import 'package:jurix_app/common/widgets/products/product_carts/product_card_horizontal.dart';
import 'package:jurix_app/common/widgets/text/section_heading.dart';
import 'package:jurix_app/utils/constants/image_strings.dart';
import 'package:jurix_app/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Sports'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(imageUrl: TImages.promoBanner1, width: double.infinity,  applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Sub - Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sport shirts', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) => const TProductCardHorizontal()),
                  ),

                ],
              )

            ],
          ),
                ),
      ),
    );
  }
}
