import 'package:flutter/material.dart';

import '../../../../../common/widgets/verticle_image_text/verticle_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';


class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticleImageText(image: TImages.userIcon, title: 'User', onTap: (){},);
        },
      ),
    );
  }
}

