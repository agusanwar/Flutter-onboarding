// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:firstproject/shared/themes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Add Timer
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Food Market',
              style: whiteTextStyle.copyWith(
                fontSize: 35,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
