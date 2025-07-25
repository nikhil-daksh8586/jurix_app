import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';



class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// -- Rating
        Row(
          children: [
            Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '4.5',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: '(199)'),
                ],
              ),
            ),
          ],
        ),

        /// -- Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: TSizes.iconMd),
        ),
      ],
    );
  }
}


