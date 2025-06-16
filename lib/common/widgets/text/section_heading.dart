import 'package:flutter/material.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.showActionButton = true,
    this.textColor,
    this.onPressed,
  });

  final String title, buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle, style: Theme.of(context).textTheme.labelSmall!.apply(color: dark ? TColors.light : TColors.dark))),
      ],
    );
  }
}
