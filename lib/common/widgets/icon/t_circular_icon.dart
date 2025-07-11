
import 'package:flutter/material.dart';
import 'package:jurix_app/utils/constants/sizes.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';


class TCircularIcon extends StatelessWidget {
  /// A custom icon widget with a background color
  ///
  /// Properties area
  /// container [width], [height], & [backgroundColor]
  ///
  /// Icon's [size], [color] & [onPressed]
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null ? backgroundColor! : dark ? TColors.black.withValues(alpha: 0.9) : TColors.white.withValues(alpha: 0.9),
      ),
      child: IconButton(onPressed: (){}, icon: Icon(icon, color: color, size: size)),

    );
  }
}
