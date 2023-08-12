import 'package:flutter/material.dart';

import '../../../Features/Auth/Components/customButton.dart';
import '../../../Features/Auth/Screens/layout.dart';
import '../../Utils/App_String.dart';
import '../../Utils/commons.dart';
import '../../constants/constants.dart';

class buildNavigationButtons extends StatelessWidget {
  buildNavigationButtons({
    super.key,
    required this.currentPage,
    required this.pageController,
    required this.screens,
  });
  int currentPage;
  final PageController pageController;
  final List<OnboardingScreen> screens;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (currentPage != 0 && currentPage != screens.length - 1)
          CustomButton(
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            iconData: Icons.arrow_back,
          ),
        if (currentPage == screens.length - 1)
          Expanded(
            child: CustomButton(
              onPressed: () {
                pushMethod(context, HomeLayout.id);
              },
              text: AppStrings.start,
              iconData: Icons.arrow_forward,
            ),
          )
        else
          Row(
            children: [
              CustomButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                text: AppStrings.next,
                iconData: Icons.arrow_forward,
              ),
            ],
          ),
      ],
    );
  }
}

Widget buildNafigationButtons(final PageController pageController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      CustomButton(
        onPressed: () {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        text: AppStrings.next,
        iconData: Icons.arrow_forward,
      ),
    ],
  );
}
