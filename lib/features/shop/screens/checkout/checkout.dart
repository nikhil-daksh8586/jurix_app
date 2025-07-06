import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:jurix_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:jurix_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:jurix_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:jurix_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
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
            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwSections,),
            
            /// -- Billing Section
            TRoundedContainer(
              showBorder: true,
              backgroundColor: dark ? TColors.black : TColors.white,
              padding: EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  /// Pricing
                  TBillingAmountSection(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                  /// Divider
                  Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                  /// Payment Method
                  TBillingPaymentSection(),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// address
                  TBillingAddressSection(),
                  const SizedBox(height: TSizes.spaceBtwItems,)
                ],
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
