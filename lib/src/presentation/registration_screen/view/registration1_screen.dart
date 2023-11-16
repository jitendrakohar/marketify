import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketify/src/presentation/registration_screen/widgets/registration_progress_bar.dart';


import '../../../common_widgets/common_widgets_export.dart';
import '../../../common_widgets/custom_divider.dart';
import '../../../common_widgets/forms/custom_text_field.dart';
import '../../../core/constants/app_sizes.dart';
import '../../../core/constants/constants_export.dart';
import '../../../routes/routes_export.dart';

class Registration1Screen extends StatelessWidget {
  const Registration1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.p16,
            ),
            child: Column(
              children: [
                const RegistrationProgressBar(
                  currentStep: 1,
                  stepName: 'Account',
                ),
                gapH40,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Create account',
                        style: Get.textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                      gapH16,
                      Text(
                        'Find the things that you love!',
                        style: Get.textTheme.bodyMedium?.copyWith(
                          color: AppColors.neutral600,
                          fontWeight: Fonts.interRegular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      gapH40,
                      PrimaryOutlinedButton(
                        hasText: true,
                        title: 'Sign up with Google',
                        onPressed: () {},
                      ),
                      gapH40,
                      const CustomDivider(
                        hasText: true,
                        text: 'or Sign up with Email',
                      ),
                      gapH40,
                      const CustomTextField(
                        labelText: 'Full name',
                        textInputType: TextInputType.text,
                      ),
                      gapH16,
                      const CustomTextField(
                        labelText: 'Email',
                        textInputType: TextInputType.emailAddress,
                      ),
                      gapH16,
                      const CustomTextField(
                        labelText: 'Password',
                        isSecret: true,
                      ),
                      gapH40,
                      PrimaryButton(
                        buttonColor: AppColors.neutral800,
                        buttonLabel: 'Sign Up',
                        onPressed: () => Get.offAllNamed(
                          AppRoutes.registration2Route,
                        ),
                      ),
                      gapH24,
                      Text.rich(
                        TextSpan(
                          style: Get.textTheme.bodyMedium,
                          text: 'By continuing you accept our standard ',
                          children: const [
                            WidgetSpan(
                              child: Text(
                                'terms and conditions ',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Text(
                                'and our ',
                                style: TextStyle(),
                              ),
                            ),
                            WidgetSpan(
                              child: Text(
                                'privacy policy.',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      gapH24,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: Get.textTheme.bodyMedium,
                          ),
                          PrimaryTextButton(
                            defaultTextStyle: false,
                            style: Get.textTheme.bodyMedium?.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                            buttonLabel: 'Log in',
                            onPressed: () => Get.toNamed(
                              AppRoutes.signInRoute,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
