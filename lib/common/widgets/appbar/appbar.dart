import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import 'package:jurix_app/utils/device/device_utility.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';


class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left, color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
