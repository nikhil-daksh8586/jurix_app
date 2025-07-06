import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/text/section_heading.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/bottom_add_to_cart_widget.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_attributes.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_detail_image_slider.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/product_meta_data.dart';
import 'package:jurix_app/features/shop/screens/product_detailes/widgets/rating_and_share.dart';
import 'package:jurix_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1-- Product Image Slider
            TProductImageSlider(),

            /// 2-- Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// -- Rating & Share Button
                  TRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  TProductMataData(),

                  /// -- Attribute
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// -- Checkout Button
                  SizedBox(width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// -- description
                  const TSectionHeading(
                    title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  ReadMoreText(
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Less',
                      moreStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                      'The drug seekers would come into the emergency room and scream about how much pain they were in. When you told them that you would start elevating their pain with Tylenol or Advil instead of a narcotic they became nasty and combative. They would start telling you what drug and dose they had to have to make their pain tolerable. After dealing with the same drug seekers several times a month it gets old. Some of the doctors would give in and give them a dose of morphine and send them away. Sure that was faster, but ethically she still couldn’t do it. Perhaps that’s why she had longer care times than the other doctors.'),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Review(99)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewScreen()), icon: Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}