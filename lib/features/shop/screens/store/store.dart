import 'package:flutter/material.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: (){},),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {

        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.light,
            expandedHeight: 440,
          )
        ];
      }, body: Container()),
    );
  }
}
