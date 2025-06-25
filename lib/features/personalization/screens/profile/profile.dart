import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jurix_app/common/widgets/appbar/appbar.dart';
import 'package:jurix_app/common/widgets/images/t_circular_image.dart';
import 'package:jurix_app/common/widgets/text/section_heading.dart';
import 'package:jurix_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:jurix_app/utils/constants/image_strings.dart';
import 'package:jurix_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      /// -- body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(image: TImages.userIcon, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                ],
              ),
            ),
            /// details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Heading Profile Info
            TSectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileManu(onPressed:(){}, title: 'Name', value: 'Nikhil Daksh',),
            TProfileManu(onPressed:(){}, title: 'User Name', value: 'nikhil_daksh',),

            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Heading Personal Info
            TSectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileManu(onPressed:(){}, title: 'User ID', value: '98312', icon: Iconsax.copy,),
            TProfileManu(onPressed:(){}, title: 'Email ID', value: 'nikhildaksh8586@gmail.com',),
            TProfileManu(onPressed:(){}, title: 'Phone No.', value: '+91 9831234567',),
            TProfileManu(onPressed:(){}, title: 'Gender', value: 'Male',),
            TProfileManu(onPressed:(){}, title: 'DOB', value: '15 Feb 2001',),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Center(child: TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red),)))
          ],
        ),
        ),
      ),
    );
  }
}
