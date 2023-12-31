import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../common_widgets/custom_divider.dart';
import '../../../common_widgets/forms/secondary_textfield.dart';
import '../../../core/core_export.dart';
import '../widgets/edit_interest_tile.dart';

class EditMyInterestsScreen extends StatefulWidget {
  const EditMyInterestsScreen({super.key});

  @override
  State<EditMyInterestsScreen> createState() => _EditMyInterestsScreenState();
}

class _EditMyInterestsScreenState extends State<EditMyInterestsScreen> {
  final List<int> selectedIndex = [0, 2, 3, 4];

  final interests = [
    'Fashion',
    'Gaming',
    'Music',
    'Reading',
    'Tech',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                'My Interests',
                style: Get.textTheme.headlineSmall,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: Sizes.p24,
                  ),
                  child: PrimaryIconButton(
                    icon: AppIcons.shoppingCartIcon,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
          body: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.p24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.p24,
                    ),
                    child: SecondaryTextField(
                      hintText: 'search for interests',
                    ),
                  ),
                  gapH24,
                  const CustomDivider(),
                  ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: interests.length,
                    separatorBuilder: (_, index) => const CustomDivider(),
                    itemBuilder: (_, index) => EditInterestTile(
                      onTap: () {
                        setState(() {
                          if (selectedIndex.contains(index)) {
                            selectedIndex.remove(index);
                            print(selectedIndex);
                          } else {
                            selectedIndex.add(index);
                            print(selectedIndex);
                          }
                        });
                      },
                      title: interests[index],
                      isSelected: selectedIndex.contains(index),
                    ),
                  ),
                  const CustomDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
