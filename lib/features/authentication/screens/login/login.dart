import 'package:flutter/material.dart';
import 'package:jurix_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:jurix_app/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text _strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title, & Sub-Title
              TLoginHeader(dark: dark),

              /// form
              const TLoginForm(),
              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith, ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}








