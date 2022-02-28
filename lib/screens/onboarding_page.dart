// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstproject/shared/themes.dart';
import 'package:firstproject/widget/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? kOnboarding3 : kOnboarding1,
      body: Column(
        children: [
          Expanded(
            // ignore: prefer_const_literals_to_create_immutables
            child: CarouselSlider(
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                OnboardingItem(
                  imageUrl: 'assets/onboarding_burger.png',
                  title: 'Fast Food',
                  subTitle:
                      'food served and made with a fast process,\nserved with quality meat',
                ),
                OnboardingItem(
                  imageUrl: 'assets/onboarding_mie.png',
                  title: 'Noodle Meatball',
                  subTitle:
                      'Mie bakso can be found all over Indonesia\nfrom street outlets to high-end eateries.',
                ),
                OnboardingItem(
                  imageUrl: 'assets/onboarding_coffee.png',
                  title: 'Coffe Break For You',
                  subTitle:
                      'Resting in a coffee break for just a few minutes\ncan make you fresh again after focusing on work',
                ),
              ],
              options: CarouselOptions(
                  // double.infinity for height overflow
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  // indecator selection
                  initialPage: currentIndex,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              // carousel controller
              carouselController: controller,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                margin: EdgeInsets.only(bottom: 120, right: 10),
                height: 10,
                width: currentIndex == 0 ? 30 : 10,
                decoration: BoxDecoration(
                  shape: currentIndex == 0 ? BoxShape.rectangle : BoxShape.circle,
                  color: currentIndex == 0 ? kRedColor : kBlackColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 120, right: 10),
                height: 10,
                width: currentIndex == 1 ? 30 : 10,
                decoration: BoxDecoration(
                  shape: currentIndex == 1 ? BoxShape.rectangle : BoxShape.circle,
                  color: currentIndex == 1 ? kRedColor : kBlackColor, 
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 120, right: 10),
                height: 10,
                width: currentIndex == 2 ? 30 : 10,
                decoration: BoxDecoration(
                  shape: currentIndex == 2 ? BoxShape.rectangle : BoxShape.circle,
                  color: currentIndex == 2 ? kRedColor : kBlackColor,  
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: redTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        if (currentIndex == 2) {
                          Navigator.pushNamed(context, '/sign-in');
                        } else {
                          controller.nextPage();
                        }
                      },
                      child: Text(
                        'NEXT',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      color: kBlueColor,
                      ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }


  // // indicator selection
  // Widget indicator(int index) {
  //   return Container(
  //     margin: EdgeInsets.only(bottom: 120, right: 10),
  //     width: currentIndex == index ? 10 : 25,
  //     height: 10,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: kRedColor,
  //     ),
  //   );
  // }
}
