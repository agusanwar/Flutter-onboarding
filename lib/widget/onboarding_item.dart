// ignore_for_file: prefer_const_constructors

import 'package:firstproject/shared/themes.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;

  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          margin: EdgeInsets.only(bottom: 50),
          child: Image.asset(
            imageUrl!,
            width: double.infinity,
          ),
        ),
        Text(
          title!,
          style: blackTextStyle.copyWith(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
         subTitle!,
          style:
              grayTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
