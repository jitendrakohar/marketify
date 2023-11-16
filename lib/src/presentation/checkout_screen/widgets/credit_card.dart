import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
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

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
      ),
      child: CreditCardWidget(
        showBackView: false,
        isHolderNameVisible: true,
        obscureCardCvv: false,
        cardType: CardType.mastercard,
        chipColor: AppColors.neutral100,
        cardBgColor: AppColors.neutral900,
        labelCardHolder: 'Leslie Floress',
        cardHolderName: 'Leslie Flores',
        cardNumber: '123456789101112',
        expiryDate: '02/24',
        labelValidThru: '02/27',
        cvvCode: '555',
        bankName: 'Bank of America',
        onCreditCardWidgetChange: (p0) {},
      ),
    );
  }
}
