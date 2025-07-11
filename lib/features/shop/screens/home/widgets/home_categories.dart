import 'package:flutter/material.dart';
import 'package:jurix_app/features/shop/screens/sub_category/sub_categories.dart';

import '../../../../../common/widgets/verticle_image_text/verticle_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import 'package:get/get.dart';

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
          return TVerticleImageText(image: TImages.userIcon, title: 'User', onTap: () => Get.to(() => const SubCategoriesScreen()),);
        },
      ),
    );
  }
}

