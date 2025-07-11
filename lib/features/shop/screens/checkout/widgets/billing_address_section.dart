import 'package:flutter/material.dart';

import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('Coding with Nikhil', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+91 9650127568', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('Kabir Nagar Sangam Park, Rana Pratap Bagh', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
          ],
        ),
      ],
    );
  }
}
