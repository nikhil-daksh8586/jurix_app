import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:jurix_app/common/widgets/products/product_carts/product_card_verticle.dart';
import 'package:jurix_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:jurix_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:jurix_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/constants/image_strings.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/images/T_rounded_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../common/widgets/verticle_image_text/verticle_image_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Header --
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- searchbar --
                  TSearchContainer(text: 'Search', onTap: () {}),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories --
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Promo Slider ---
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                  /// Heading
                  TSectionHeading(title: 'Popular Products'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Popular Products ---
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVerticle(), mainAxisExtent: 200,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
