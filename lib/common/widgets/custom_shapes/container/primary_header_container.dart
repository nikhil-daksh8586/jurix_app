import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1),),),
            Positioned(right: -300, top: 100, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1),),),
            Positioned(left: -300, top: 100, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1),),),
            child,
          ],
        ),
      ),
    );
  }
}
