import 'package:flutter/material.dart';
import 'package:marketify/src/common_widgets/svg_asset.dart';

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

import '../../../core/core_export.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.onPressed,
    this.buttonLabel,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SvgAsset(
          assetPath: AppAssets.appLogoBlackSmall,
          width: Sizes.p24,
          height: Sizes.p24,
        ),
        PrimaryTextButton(
          buttonLabel: buttonLabel ?? 'Skip',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
