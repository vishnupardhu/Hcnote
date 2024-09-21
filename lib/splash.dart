import 'package:flutter/material.dart';
import 'package:hcocrnoteorder/widgets/onboarding_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSplash extends StatefulWidget {
  @override
  State<OnboardingSplash> createState() => _OnboardingSplashState();
}

class _OnboardingSplashState extends State<OnboardingSplash> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _onBoardingPages = [
    OnboardingCard(
      image: "assets/images/onboarding_1.png",
      title: 'Welcome to Sinau.io!',
      description:
          'Introducing the Learn.io platform and providing an overview of the application\'s purpose.',
      buttonText: 'Next',
      onPressed: () {
        _pageController.animateToPage(
          1,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnboardingCard(
      image: "assets/images/onboarding_2.png",
      title: 'Create an Account and Choose a Course',
      description:
          'Directing users to create an account on Learn.io and select a course that fits their interests and needs.',
      buttonText: 'Next',
      onPressed: () {
        _pageController.animateToPage(
          2,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnboardingCard(
      image: "assets/images/onboarding_3.png",
      title: 'Learn Personally',
      description:
          'Emphasizing the benefits of learning on Learn.io that can be tailored to users\' personal needs and abilities.',
      buttonText: 'Done',
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onBoardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: _onBoardingPages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotColor: Theme.of(context).colorScheme.secondary,
              ),
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Durations.long1,
                  curve: Curves.linear,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
