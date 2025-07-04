import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/utils/constants/colors.dart';
import 'package:jurix_app/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Name'),),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                  const SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                  const SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
              TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
              const SizedBox(height: TSizes.defaultSpace,),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save')),)

            ],
          ),
        ),
        ),
      ),

    );
  }
}
