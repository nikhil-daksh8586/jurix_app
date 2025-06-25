import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/custom_shapes/container/circular_container.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: TCircularContainer(width: 50, height: 50, backgroundColor: Colors.green,),
      shape: CircleBorder(),
      labelPadding: EdgeInsets.all(0),
      backgroundColor: Colors.green,
    );
  }
}
