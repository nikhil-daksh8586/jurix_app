import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [

            /// -- Items in cart
            const TCartItems(showAddRemoveButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            /// -- Coupon TextField
            TRoundedContainer(
              showBorder: true,
              backgroundColor: dark ? TColors.dark : TColors.white,
              padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
              child: Row(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Have a promo code? Enter here"
                    ),
                  )
                ],
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
