import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:marketify/src/presentation/categories_screen/widgets/category_card_item.dart';
import 'package:marketify/src/presentation/categories_screen/widgets/staggered_category_card.dart';
import 'package:marketify/src/presentation/checkout_screen/widgets/credit_card.dart';
import 'package:marketify/src/presentation/home_screen/widgets/deals_card.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../common_widgets/custom_divider.dart';
import '../../../common_widgets/forms/custom_text_field.dart';
import '../../../common_widgets/forms/secondary_textfield.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';



class CheckoutConfirmationScreen extends StatefulWidget {
  const CheckoutConfirmationScreen({super.key});

  @override
  State<CheckoutConfirmationScreen> createState() =>
      _CheckoutConfirmationScreenState();
}

class _CheckoutConfirmationScreenState
    extends State<CheckoutConfirmationScreen> {
  final confettiController = ConfettiController(
    duration: const Duration(milliseconds: 300),
  );

  // TODO: Checkout controller
  @override
  void initState() {
    confettiController.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p24,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  gapH280,
                  Text(
                    'Woohoo!',
                    style: Get.textTheme.headlineLarge,
                  ),
                  gapH24,
                  Text(
                    'Your order has been placed and you will get a shipping confirmation soon.',
                    style: Get.textTheme.displaySmall?.copyWith(
                      color: AppColors.neutral700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  gapH64,
                  PrimaryButton(
                    labelColor: AppColors.neutral800,
                    buttonLabel: 'Continue',
                    onPressed: () => Get.offAllNamed(
                      AppRoutes.baseRoute,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: ConfettiWidget(
                  shouldLoop: true,
                  blastDirectionality: BlastDirectionality.explosive,
                  confettiController: confettiController,
                  blastDirection: -pi / 2,
                  emissionFrequency: .2,
                  numberOfParticles: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
