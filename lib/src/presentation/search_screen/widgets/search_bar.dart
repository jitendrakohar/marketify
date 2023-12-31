import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketify/src/common_widgets/svg_asset.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/constants/constants_export.dart';


class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({Key? key}) : super(key: key);

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      onChanged: (value) {},
      decoration: InputDecoration(
        counterText: '',
        isDense: true,
        prefixIcon: const Padding(
          padding: EdgeInsets.all(
            Sizes.p20,
          ),
          child: SvgAsset(
            assetPath: AppIcons.searchIcon,
          ),
        ),
        suffixIcon: PrimaryTextButton(
          buttonLabel: 'Done',
          fontWeight: Fonts.interSemiBold,
          onPressed: () {
            searchController.clear();
            FocusScope.of(context).unfocus();
          },
        ),
        hintText: 'Search by keyword or categories',
        hintStyle: Get.textTheme.displaySmall?.copyWith(
          color: AppColors.neutral400,
          fontWeight: Fonts.interRegular,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
