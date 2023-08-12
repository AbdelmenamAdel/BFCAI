import 'package:bfcai_fc_from_figma/Core/Utils/App_Images.dart';
import 'package:bfcai_fc_from_figma/Core/Utils/App_String.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../Core/constants/constants.dart';
import '../../../Core/widgets/onBoardingWidgets/onBoardingBuildButtons.dart';
import '../../../Core/widgets/onBoardingWidgets/onBoardingPage.dart';

class HomeOnBoarding extends StatefulWidget {
  const HomeOnBoarding({super.key});
  @override
  _HomeOnBoardingState createState() => _HomeOnBoardingState();
}

class _HomeOnBoardingState extends State<HomeOnBoarding> {
  final PageController _pageController = PageController();
  final List<OnboardingScreen> _screens = [
    OnboardingScreen(
      imagePath: AppImage.imaPath1,
      title: AppStrings.onboardingTitleOne,
      description: AppStrings.onboardingSubTitleOne,
    ),
    OnboardingScreen(
      imagePath: AppImage.imaPath2,
      title: AppStrings.onboardingTitleTwo,
      description: AppStrings.onboardingSubTitleTwo,
    ),
    OnboardingScreen(
      imagePath: AppImage.imaPath3,
      title: AppStrings.onboardingTitleThree,
      description: AppStrings.onboardingSubTitleThree,
    ),
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _screens.length,
                itemBuilder: (context, index) {
                  return buildOnboardingPage(_screens[index]);
                },
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: _screens.length,
              effect: const ExpandingDotsEffect(),
            ),
            const SizedBox(height: 30),
            (_currentPage == 0)
                ? buildNafigationButtons(_pageController)
                : buildNavigationButtons(
                    currentPage: _currentPage,
                    pageController: _pageController,
                    screens: _screens,
                  ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
